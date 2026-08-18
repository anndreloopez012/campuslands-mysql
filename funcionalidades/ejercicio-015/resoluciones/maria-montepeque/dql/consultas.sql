-- funcionalidades/ejercicio-015 - maria-montepeque
USE campuslands_mysql;

-- Por defecto cada sentencia es su propia transaccion (autocommit = 1).
SELECT @@autocommit AS autocommit_por_defecto;

-- 1. Transaccion exitosa: registrar un pago son DOS operaciones que tienen
-- que aplicarse juntas (insertar el pago + descontar el saldo). START
-- TRANSACTION las agrupa; si ambas salen bien, COMMIT las hace definitivas.
START TRANSACTION;

INSERT INTO pagos_proveedores (proyecto_id, proveedor, concepto, monto, fecha_pago)
VALUES (1, 'Ingenieria Estructural Vertex', 'Analisis sismico', 25000.00, '2026-07-10');

UPDATE proyectos_arquitectura
SET saldo_disponible = saldo_disponible - 25000.00
WHERE id = 1;

COMMIT;

SELECT nombre, presupuesto_total, saldo_disponible FROM proyectos_arquitectura WHERE id = 1;

-- 2. Transaccion que falla A MITAD DE CAMINO: 'Puente Peatonal Norte' (id 4)
-- ya tiene saldo_disponible = 0.00. El INSERT del pago se aplica sin
-- problema DENTRO de la transaccion, pero el UPDATE que descuenta el saldo
-- viola chk_saldo_no_negativo_arquitectura y falla.
--
-- Punto clave: InnoDB NO deshace solo el resto de la transaccion cuando una
-- sentencia falla. El INSERT sigue "pendiente" hasta que alguien decide que
-- hacer. Si aqui se hiciera COMMIT por error, quedaria un pago registrado
-- sin su descuento de saldo (datos inconsistentes). Por eso se hace ROLLBACK.
START TRANSACTION;

INSERT INTO pagos_proveedores (proyecto_id, proveedor, concepto, monto, fecha_pago)
VALUES (4, 'Mantenimiento Urbano SA', 'Ajustes finales', 5000.00, '2026-07-20');

-- Esta UPDATE FALLA a proposito (viola chk_saldo_no_negativo_arquitectura,
-- 0.00 - 5000.00 < 0). El error se ve en la evidencia; el script sigue
-- corriendo con --force para poder mostrar el ROLLBACK justo despues.
UPDATE proyectos_arquitectura SET saldo_disponible = saldo_disponible - 5000.00 WHERE id = 4;

ROLLBACK;

-- Se confirma que el ROLLBACK deshizo TAMBIEN el INSERT (que si habia funcionado):
SELECT COUNT(*) AS pagos_puente_peatonal FROM pagos_proveedores WHERE proyecto_id = 4;
SELECT saldo_disponible FROM proyectos_arquitectura WHERE id = 4;

-- 3. SAVEPOINT: dentro de una misma transaccion, deshacer solo UNA parte sin
-- perder lo que ya se hizo antes.
START TRANSACTION;

-- Pago A: se queda.
INSERT INTO pagos_proveedores (proyecto_id, proveedor, concepto, monto, fecha_pago)
VALUES (3, 'Estudio BIM Poliedro', 'Modelado BIM completo', 60000.00, '2026-04-01');

UPDATE proyectos_arquitectura SET saldo_disponible = saldo_disponible - 60000.00 WHERE id = 3;

SAVEPOINT antes_de_pago_b;

-- Pago B: se va a deshacer.
INSERT INTO pagos_proveedores (proyecto_id, proveedor, concepto, monto, fecha_pago)
VALUES (3, 'Iluminacion Escenica Halo', 'Diseno de iluminacion', 45000.00, '2026-04-10');

UPDATE proyectos_arquitectura SET saldo_disponible = saldo_disponible - 45000.00 WHERE id = 3;

-- Deshace SOLO el Pago B (su INSERT y su UPDATE), el Pago A queda intacto.
ROLLBACK TO SAVEPOINT antes_de_pago_b;

COMMIT;

SELECT nombre, presupuesto_total, saldo_disponible FROM proyectos_arquitectura WHERE id = 3;
SELECT proveedor, concepto, monto FROM pagos_proveedores WHERE proyecto_id = 3;

-- 4. Estado final de todos los proyectos, para confirmar que todo quedo
-- consistente (cada saldo_disponible = presupuesto_total - SUM(pagos)).
SELECT
    p.nombre,
    p.presupuesto_total,
    p.saldo_disponible,
    COALESCE(SUM(pp.monto), 0) AS total_pagado,
    p.presupuesto_total - COALESCE(SUM(pp.monto), 0) AS saldo_calculado
FROM proyectos_arquitectura p
    LEFT JOIN pagos_proveedores pp ON pp.proyecto_id = p.id
GROUP BY p.id, p.nombre, p.presupuesto_total, p.saldo_disponible
ORDER BY p.id;

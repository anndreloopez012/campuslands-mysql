-- funcionalidades/ejercicio-013 - maria-montepeque
-- Tematica: dibujo digital
USE campuslands_mysql;

DROP FUNCTION IF EXISTS fn_ingresos_ilustrador;
DROP FUNCTION IF EXISTS fn_dias_desde_entrega;
DROP FUNCTION IF EXISTS fn_bono_nivel;
DROP FUNCTION IF EXISTS fn_nivel_complejidad;
DROP FUNCTION IF EXISTS fn_precio_base;
DROP TABLE IF EXISTS ilustraciones;
DROP TABLE IF EXISTS ilustradores_digitales;

CREATE TABLE ilustradores_digitales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alias VARCHAR(40) NOT NULL UNIQUE,
    nivel ENUM('Principiante', 'Intermedio', 'Avanzado', 'Profesional') NOT NULL,
    tarifa_hora_base DECIMAL(6, 2) NOT NULL,
    CONSTRAINT chk_tarifa_ilustrador CHECK (tarifa_hora_base > 0)
);

CREATE TABLE ilustraciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ilustrador_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    categoria ENUM('Personaje', 'Fondo', 'Icono', 'Concept Art') NOT NULL,
    horas_trabajadas DECIMAL(5, 1) NOT NULL,
    capas INT NOT NULL,
    fecha_entrega DATE NOT NULL,
    CONSTRAINT fk_ilustracion_ilustrador
        FOREIGN KEY (ilustrador_id) REFERENCES ilustradores_digitales (id),
    CONSTRAINT chk_horas_ilustracion CHECK (horas_trabajadas > 0),
    CONSTRAINT chk_capas_ilustracion CHECK (capas > 0)
);

DELIMITER $$

-- 1. Funcion pura, DETERMINISTIC: mismo resultado siempre para las mismas
-- horas y tarifa. Se puede usar directo dentro de un SELECT (esto un
-- PROCEDURE no lo puede hacer, solo se llama con CALL).
CREATE FUNCTION fn_precio_base(p_horas DECIMAL(5, 1), p_tarifa DECIMAL(6, 2))
RETURNS DECIMAL(8, 2)
DETERMINISTIC
BEGIN
    RETURN p_horas * p_tarifa;
END $$

-- 2. Funcion con logica CASE: clasifica la complejidad segun la cantidad de
-- capas. Se puede usar tanto en el SELECT como en el WHERE.
CREATE FUNCTION fn_nivel_complejidad(p_capas INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE v_nivel VARCHAR(10);

    IF p_capas <= 5 THEN
        SET v_nivel = 'Simple';
    ELSEIF p_capas <= 15 THEN
        SET v_nivel = 'Media';
    ELSE
        SET v_nivel = 'Compleja';
    END IF;

    RETURN v_nivel;
END $$

-- 3. Funcion con logica de negocio: bono segun el nivel del ilustrador,
-- aplicado sobre un subtotal ya calculado (se puede anidar con otra funcion).
CREATE FUNCTION fn_bono_nivel(p_nivel VARCHAR(20), p_subtotal DECIMAL(8, 2))
RETURNS DECIMAL(8, 2)
DETERMINISTIC
BEGIN
    DECLARE v_porcentaje DECIMAL(4, 2);

    CASE p_nivel
        WHEN 'Principiante' THEN SET v_porcentaje = 0.00;
        WHEN 'Intermedio' THEN SET v_porcentaje = 0.05;
        WHEN 'Avanzado' THEN SET v_porcentaje = 0.10;
        WHEN 'Profesional' THEN SET v_porcentaje = 0.15;
        ELSE SET v_porcentaje = 0.00;
    END CASE;

    RETURN ROUND(p_subtotal * v_porcentaje, 2);
END $$

-- 4. Funcion NOT DETERMINISTIC: usa CURDATE(), asi que el resultado cambia
-- segun el dia en que se ejecute (por eso NO se declara DETERMINISTIC).
CREATE FUNCTION fn_dias_desde_entrega(p_fecha DATE)
RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    RETURN DATEDIFF(CURDATE(), p_fecha);
END $$

-- 5. Funcion que consulta OTRA tabla (READS SQL DATA) y devuelve un total ya
-- calculado. Se puede usar como una columna mas dentro de un SELECT sobre
-- ilustradores_digitales, algo que un procedimiento no puede hacer directamente.
CREATE FUNCTION fn_ingresos_ilustrador(p_ilustrador_id INT)
RETURNS DECIMAL(10, 2)
READS SQL DATA
BEGIN
    DECLARE v_total DECIMAL(10, 2);

    SELECT COALESCE(SUM(
        fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base)
        + fn_bono_nivel(d.nivel, fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base))
    ), 0)
    INTO v_total
    FROM ilustraciones i
        INNER JOIN ilustradores_digitales d ON d.id = i.ilustrador_id
    WHERE i.ilustrador_id = p_ilustrador_id;

    RETURN v_total;
END $$

DELIMITER ;

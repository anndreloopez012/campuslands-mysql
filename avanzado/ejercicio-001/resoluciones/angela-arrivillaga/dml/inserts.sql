-- datos de prueba y simulacion de transacciones
USE campuslands_mysql;

-- 1. cargamos 5 equipos iniciales
INSERT INTO equipos (nombre, puntos, estado) VALUES
('Dragones Esports', 500, 'activo'),
('Fenix Gaming', 400, 'activo'),
('Titanes MOBA', 300, 'activo'),
('Viper Squad', 150, 'revision'),
('Sombra Clan', 50, 'eliminado');

-- 2. ejemplo de transaccion exitosa (COMMIT)
-- el equipo 1 le transfiere 50 puntos al equipo 2 por ganar un desafio
START TRANSACTION;

UPDATE equipos 
SET puntos = puntos - 50 
WHERE id = 1;

UPDATE equipos 
SET puntos = puntos + 50 
WHERE id = 2;

INSERT INTO transferencias_puntos (equipo_origen_id, equipo_destino_id, puntos_transferidos)
VALUES (1, 2, 50);

-- confirmamos y guardamos los cambios de la transaccion
COMMIT;


-- 3. ejemplo de transaccion cancelada (ROLLBACK)
-- simulamos una transferencia que no debe guardarse porque se detecto una falla o error
START TRANSACTION;

UPDATE equipos 
SET puntos = puntos - 100 
WHERE id = 3;

UPDATE equipos 
SET puntos = puntos + 100 
WHERE id = 4;

INSERT INTO transferencias_puntos (equipo_origen_id, equipo_destino_id, puntos_transferidos)
VALUES (3, 4, 100);

-- deshacemos todo para que no se alteren los puntos de los equipos
ROLLBACK;


-- 4. agregamos un par de transferencias manuales para tener minimo 8 registros sumando ambas tablas
INSERT INTO transferencias_puntos (equipo_origen_id, equipo_destino_id, puntos_transferidos) VALUES
(2, 3, 20),
(1, 3, 30);
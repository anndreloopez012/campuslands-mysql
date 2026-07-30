-- =====================================================
-- Consultas utilizando UPDATE
-- =====================================================

USE campuslands_mysqli;

-- Mostrar datos iniciales
SELECT * FROM equipos_futsal;

-- 1. Actualizar los puntos de un equipo
UPDATE equipos_futsal
SET puntos = 42
WHERE nombre = 'Dragones FS';

SELECT
    nombre AS Equipo,
    puntos AS Puntos
FROM equipos_futsal
WHERE nombre = 'Dragones FS';

-- 2. Cambiar el estado de un equipo
UPDATE equipos_futsal
SET estado = 'Activo'
WHERE nombre = 'Lobos FS';

SELECT
    nombre,
    estado
FROM equipos_futsal
WHERE nombre = 'Lobos FS';

-- 3. Cambiar el entrenador
UPDATE equipos_futsal
SET entrenador = 'Roberto García'
WHERE nombre = 'Panteras FS';

SELECT
    nombre,
    entrenador
FROM equipos_futsal
WHERE nombre = 'Panteras FS';

-- 4. Incrementar una victoria y los puntos correspondientes
UPDATE equipos_futsal
SET victorias = victorias + 1,
    puntos = puntos + 3
WHERE nombre = 'Leones FS';

SELECT
    nombre,
    victorias,
    puntos
FROM equipos_futsal
WHERE nombre = 'Leones FS';

-- 5. Actualizar la ciudad de un equipo
UPDATE equipos_futsal
SET ciudad = 'Villa Nueva'
WHERE nombre = 'Tigres FS';

SELECT
    nombre,
    ciudad
FROM equipos_futsal
WHERE nombre = 'Tigres FS';
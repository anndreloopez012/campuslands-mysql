USE campuslands_mysql;

-- ==========================================
-- CONSULTA 1
-- Eliminar un peleador retirado
-- ==========================================

DELETE FROM peleadores_kickboxing
WHERE nombre = 'Andrés Pérez';

SELECT
    nombre,
    estado
FROM peleadores_kickboxing;


-- ==========================================
-- CONSULTA 2
-- Eliminar un peleador suspendido
-- ==========================================

DELETE FROM peleadores_kickboxing
WHERE nombre = 'Luis Gómez';

SELECT
    nombre,
    estado
FROM peleadores_kickboxing;


-- ==========================================
-- CONSULTA 3
-- Eliminar un peleador por id
-- ==========================================

DELETE FROM peleadores_kickboxing
WHERE id_peleador = 9;

SELECT
    id_peleador,
    nombre
FROM peleadores_kickboxing;


-- ==========================================
-- CONSULTA 4
-- Eliminar peleadores mayores de 32 años
-- ==========================================

DELETE FROM peleadores_kickboxing
WHERE edad > 32;

SELECT
    nombre,
    edad
FROM peleadores_kickboxing;


-- ==========================================
-- CONSULTA 5
-- Eliminar peleadores con más de 7 derrotas
-- ==========================================

DELETE FROM peleadores_kickboxing
WHERE derrotas > 7;

SELECT
    nombre,
    derrotas
FROM peleadores_kickboxing;


-- ==========================================
-- CONSULTA 6
-- Mostrar los registros finales
-- ==========================================

SELECT
    id_peleador AS ID,
    nombre AS Peleador,
    pais AS Pais,
    categoria AS Categoria,
    victorias AS Victorias,
    derrotas AS Derrotas,
    edad AS Edad,
    estado AS Estado
FROM peleadores_kickboxing;
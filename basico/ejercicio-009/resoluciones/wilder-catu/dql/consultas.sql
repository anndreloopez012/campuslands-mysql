USE campuslands_mysql;

-- Mostrar todos los competidores antes de eliminar
SELECT * FROM competidores_kickboxing;

-- 1. Eliminar un competidor retirado
DELETE FROM competidores_kickboxing
WHERE nombre = 'José García';

SELECT * 
FROM competidores_kickboxing
WHERE nombre = 'José García';

-- 2. Eliminar un competidor suspendido
DELETE FROM competidores_kickboxing
WHERE nombre = 'Marco Pérez';

SELECT *
FROM competidores_kickboxing
WHERE nombre = 'Marco Pérez';

-- 3. Eliminar competidores con más de 8 derrotas
DELETE FROM competidores_kickboxing
WHERE derrotas > 8;

SELECT
    nombre,
    derrotas
FROM competidores_kickboxing;

-- 4. Eliminar competidores retirados
DELETE FROM competidores_kickboxing
WHERE estado = 'Retirado';

SELECT
    nombre,
    estado
FROM competidores_kickboxing;

-- 5. Mostrar listado final después de todas las eliminaciones
SELECT
    id_competidor,
    nombre,
    categoria,
    victorias,
    derrotas,
    estado
FROM competidores_kickboxing
ORDER BY victorias DESC;
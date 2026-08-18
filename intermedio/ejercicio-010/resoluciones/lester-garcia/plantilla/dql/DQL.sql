 USE ejercicio_10_int;

-- 1. Mostrar todos los corredores registrados
SELECT *
FROM runners;

-- 2. Mostrar las carreras programadas
SELECT *
FROM races;

-- 3. Mostrar las categorías disponibles
SELECT *
FROM categories;

-- 4. Mostrar las inscripciones con el nombre del corredor
SELECT
    rg.registration_id,
    r.full_name,
    rg.bib_number
FROM registrations rg
INNER JOIN runners r
ON rg.runner_id = r.runner_id;

-- 5. Mostrar los dorsales asignados
SELECT bib_number
FROM registrations
ORDER BY bib_number;

-- 6. Contar el total de inscripciones
SELECT COUNT(*) AS total_registrations
FROM registrations;
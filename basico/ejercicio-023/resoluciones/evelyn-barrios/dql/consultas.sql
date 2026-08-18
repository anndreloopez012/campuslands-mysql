-- Consultas base. Completa o reemplaza segun el enunciado.
-- Consultas para el Ejercicio 023, enfocadas en la temática de arquitectura 3D.
USE campuslands_mysql;

-- 1. Consulta general de todos los modelos 3D.
SELECT * FROM basico_ejercicio_023;

-- 2. Análisis del promedio de puntaje y cantidad de modelos por categoría.
SELECT
    categoria,
    COUNT(*) AS total_modelos,
    AVG(puntaje) AS promedio_puntaje
FROM basico_ejercicio_023
GROUP BY categoria
ORDER BY promedio_puntaje DESC;

-- 3. Top 3 modelos 3D activos con los puntajes más altos.
SELECT nombre, puntaje, categoria
FROM basico_ejercicio_023
WHERE estado = 'activo'
ORDER BY puntaje DESC
LIMIT 3;

-- 4. Modelos 3D que se encuentran en estado de 'revision'.
SELECT nombre, categoria, puntaje
FROM basico_ejercicio_023
WHERE estado = 'revision';

-- 5. Conteo de modelos 3D por estado.
SELECT
    estado,
    COUNT(*) AS cantidad_modelos
FROM basico_ejercicio_023
GROUP BY estado;

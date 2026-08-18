-- 1. Verificar los datos antes de realizar el respaldo
SELECT
    carrera_id,
    nombre_carrera,
    ciudad,
    distancia_km,
    fecha_carrera,
    estado
FROM carreras_urbanas
ORDER BY fecha_carrera ASC;

-- 2. Verificar la cantidad total de registros
SELECT COUNT(*) AS total_carreras
FROM carreras_urbanas;

-- 3. Verificar las carreras finalizadas
SELECT
    nombre_carrera,
    ciudad,
    distancia_km,
    fecha_carrera
FROM carreras_urbanas
WHERE estado = 'Finalizada'
ORDER BY fecha_carrera ASC;

-- 4. Verificar las carreras programadas
SELECT
    nombre_carrera,
    ciudad,
    distancia_km,
    fecha_carrera
FROM carreras_urbanas
WHERE estado = 'Programada'
ORDER BY fecha_carrera ASC;

-- 5. Comprobar la estructura de la tabla antes del backup
DESCRIBE carreras_urbanas;
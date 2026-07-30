-- =====================================================
-- Consultas usando WHERE
-- =====================================================

USE autos_hiperdeportivos;

-- 1. Autos disponibles
SELECT
    marca,
    modelo,
    precio
FROM autos
WHERE estado = 'Disponible';

-- 2. Autos con velocidad superior a 450 km/h
SELECT
    marca,
    modelo,
    velocidad_maxima
FROM autos
WHERE velocidad_maxima > 450
ORDER BY velocidad_maxima DESC;

-- 3. Autos italianos
SELECT
    marca,
    modelo,
    pais_origen
FROM autos
WHERE pais_origen = 'Italia';

-- 4. Autos cuyo precio supera los 3 millones
SELECT
    marca,
    modelo,
    precio
FROM autos
WHERE precio > 3000000
ORDER BY precio DESC;

-- 5. Autos con potencia mayor o igual a 1500 HP
SELECT
    marca,
    modelo,
    potencia_hp
FROM autos
WHERE potencia_hp >= 1500
ORDER BY potencia_hp DESC;

-- 6. Autos vendidos
SELECT
    marca AS Marca,
    modelo AS Modelo,
    estado AS Estado
FROM autos
WHERE estado = 'Vendido';
USE campuslands_mysql;

-- ==========================================
-- CONSULTA 1
-- Autos disponibles
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    precio AS Precio
FROM autos
WHERE estado = 'Disponible';


-- ==========================================
-- CONSULTA 2
-- Autos fabricados después del año 2022
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    anio AS Año
FROM autos
WHERE anio > 2022;


-- ==========================================
-- CONSULTA 3
-- Autos con velocidad mayor a 450 km/h
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    velocidad_maxima AS Velocidad_Maxima
FROM autos
WHERE velocidad_maxima > 450;


-- ==========================================
-- CONSULTA 4
-- Autos cuyo precio supera los 3 millones
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    precio AS Precio
FROM autos
WHERE precio > 3000000;


-- ==========================================
-- CONSULTA 5
-- Autos fabricados en Italia
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    potencia_hp AS Potencia_HP
FROM autos
WHERE pais_origen = 'Italia';


-- ==========================================
-- CONSULTA 6
-- Autos con más de 1500 HP
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    potencia_hp AS Potencia_HP
FROM autos
WHERE potencia_hp > 1500;


-- ==========================================
-- CONSULTA 7
-- Autos vendidos
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    estado AS Estado
FROM autos
WHERE estado = 'Vendido';


-- ==========================================
-- CONSULTA 8
-- Autos reservados
-- ==========================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    estado AS Estado
FROM autos
WHERE estado = 'Reservado';
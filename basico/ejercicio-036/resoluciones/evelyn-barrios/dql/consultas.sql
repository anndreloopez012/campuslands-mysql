-- Consultas base. Completa o reemplaza segun el enunciado.
-- dql/consultas.sql
-- Consultas para analizar los datos de los autos hiperdeportivos.

USE hiperdeportivos_db;

-- 1. Autos con más de 1000 caballos de fuerza (HP).
-- Filtra los autos más potentes de la lista.
SELECT marca, modelo, anio_lanzamiento, potencia_hp
FROM hiperdeportivos
WHERE potencia_hp > 1000
ORDER BY potencia_hp DESC;

-- 2. Autos de producción limitada lanzados después de 2018.
-- Combina un filtro booleano con uno de fecha.
SELECT marca, modelo, anio_lanzamiento, precio_usd
FROM hiperdeportivos
WHERE produccion_limitada = TRUE AND anio_lanzamiento > 2018;

-- 3. Autos de la marca 'Ferrari' o 'Lamborghini'.
-- Utiliza el operador IN para filtrar por múltiples valores de una columna.
SELECT marca, modelo, velocidad_max_kmh
FROM hiperdeportivos
WHERE marca IN ('Ferrari', 'Lamborghini');

-- 4. Autos cuyo precio está entre 1 y 2 millones de dólares.
SELECT marca, modelo, precio_usd
FROM hiperdeportivos
WHERE precio_usd BETWEEN 1000000 AND 2000000;

-- 5. El auto más rápido (con mayor velocidad máxima).
SELECT marca, modelo, velocidad_max_kmh
FROM hiperdeportivos
ORDER BY velocidad_max_kmh DESC
LIMIT 1;

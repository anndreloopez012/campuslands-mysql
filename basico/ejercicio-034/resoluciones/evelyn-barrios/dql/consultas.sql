-- dql/consultas.sql
-- Consultas para analizar los datos del garaje de motos.

USE garaje_motos;

-- 1. Conteo de motos por estado de servicio.
-- Permite ver rápidamente la carga de trabajo del garaje.
SELECT 
    estado_servicio,
    COUNT(*) AS cantidad_motos
FROM motos
GROUP BY estado_servicio
ORDER BY cantidad_motos DESC;

-- 2. Top 3 de las reparaciones más costosas que están 'En Proceso' o 'Completado'.
-- Ayuda a identificar los trabajos de mayor valor.
SELECT marca, modelo, anio, precio_reparacion
FROM motos
WHERE estado_servicio IN ('En Proceso', 'Completado')
ORDER BY precio_reparacion DESC
LIMIT 3;

-- 3. Listar todas las motos de la marca 'Yamaha'.
SELECT id, modelo, anio, estado_servicio FROM motos WHERE marca = 'Yamaha';

-- 4. Costo promedio de reparación de todas las motos completadas.
SELECT AVG(precio_reparacion) AS costo_promedio_completadas
FROM motos
WHERE estado_servicio = 'Completado';

-- 5. Motos que ingresaron en la última semana.
SELECT marca, modelo, fecha_ingreso, estado_servicio
FROM motos
WHERE fecha_ingreso >= CURDATE() - INTERVAL 7 DAY;
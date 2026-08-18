-- Consultas base. Completa o reemplaza segun el enunciado.
-- dql/consultas.sql
-- Consultas para analizar los datos del taller mecánico de motos.

USE taller_motos;

-- 1. Conteo de motos por estado de reparación.
-- Permite ver la carga de trabajo actual del taller.
SELECT 
    estado_reparacion,
    COUNT(*) AS total_motos
FROM motos
GROUP BY estado_reparacion
ORDER BY total_motos DESC;

-- 2. Listar motos 'En Proceso' con costo estimado superior a 400.00.
-- Identifica reparaciones complejas o costosas en curso.
SELECT marca, modelo, anio, costo_estimado, descripcion_problema
FROM motos
WHERE estado_reparacion = 'En Proceso' AND costo_estimado > 400.00;

-- 3. Promedio del costo estimado de reparaciones completadas.
SELECT AVG(costo_estimado) AS costo_promedio_reparaciones_completadas
FROM motos
WHERE estado_reparacion = 'Completado';

-- 4. Motos de la marca 'Yamaha' o 'Honda' que están 'Pendiente'.
SELECT marca, modelo, anio, fecha_recepcion
FROM motos
WHERE marca IN ('Yamaha', 'Honda') AND estado_reparacion = 'Pendiente';

-- 5. Top 3 de las motos con mayor kilometraje que han sido recibidas en el último mes.
SELECT marca, modelo, kilometraje, fecha_recepcion
FROM motos
WHERE fecha_recepcion >= CURDATE() - INTERVAL 1 MONTH
ORDER BY kilometraje DESC
LIMIT 3;

-- DQL: Consultas analíticas y de reportes para taller mecánico de motos
USE db_taller_mecanico;

-- 1. Listado completo de reparaciones calculando el costo total (Mano de obra + Repuestos) ordenadas de mayor a menor valor
SELECT codigo_orden, propietario, modelo_moto, tipo_servicio, costo_mano_obra, costo_repuestos, 
       (costo_mano_obra + costo_repuestos) AS costo_total, fecha_ingreso, estado_reparacion
FROM reparaciones_motos
ORDER BY costo_total DESC;

-- 2. Filtrar órdenes que se encuentran activas en el taller ('en_proceso' o 'pendiente') ordenadas por fecha de ingreso
SELECT codigo_orden, propietario, modelo_moto, tipo_servicio, (costo_mano_obra + costo_repuestos) AS costo_total, fecha_ingreso, estado_reparacion
FROM reparaciones_motos
WHERE estado_reparacion IN ('en_proceso', 'pendiente')
ORDER BY fecha_ingreso ASC;

-- 3. Agrupar por estado de reparación para analizar la cantidad de motos, el costo máximo y el promedio general del costo total por categoría
SELECT estado_reparacion, COUNT(*) AS total_ordenes, MAX(costo_mano_obra + costo_repuestos) AS costo_maximo, ROUND(AVG(costo_mano_obra + costo_repuestos), 2) AS costo_promedio
FROM reparaciones_motos
GROUP BY estado_reparacion
ORDER BY total_ordenes DESC;

-- 4. Ranking TOP 3 de las reparaciones más costosas procesadas en el taller mecánico
SELECT codigo_orden, propietario, modelo_moto, tipo_servicio, (costo_mano_obra + costo_repuestos) AS costo_total, fecha_ingreso, estado_reparacion
FROM reparaciones_motos
ORDER BY costo_total DESC
LIMIT 3;

-- 5. Resumen financiero global del taller (Suma total de ingresos proyectados por reparaciones y promedio de costo en repuestos)
SELECT SUM(costo_mano_obra + costo_repuestos) AS ingresos_totales_proyectados, ROUND(AVG(costo_repuestos), 2) AS promedio_gasto_repuestos
FROM reparaciones_motos;
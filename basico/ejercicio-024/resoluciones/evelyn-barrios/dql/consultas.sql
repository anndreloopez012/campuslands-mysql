-- Consultas base. Completa o reemplaza segun el enunciado.
USE academia_soldadura;

-- 1. Reporte general de inspecciones: Contar cuántas inspecciones hay por cada resultado.
SELECT 
    resultado,
    COUNT(*) AS total_inspecciones
FROM inspecciones_soldadura
GROUP BY resultado
ORDER BY total_inspecciones DESC;

-- 2. Listar inspecciones rechazadas con más de 2 defectos para revisión prioritaria.
SELECT id, proyecto_nombre, soldador_id, fecha_inspeccion, defectos_encontrados
FROM inspecciones_soldadura
WHERE resultado = 'Rechazado' AND defectos_encontrados > 2;

-- 3. Mostrar los registros que ya han sido reparados y se consideran obsoletos.
-- Estos son los registros que se van a eliminar.
SELECT id, proyecto_nombre, resultado 
FROM inspecciones_soldadura 
WHERE resultado = 'Reparado';

-- 4. DELETE controlado: Eliminar únicamente los registros de inspecciones que ya fueron 'Reparado'.
DELETE FROM inspecciones_soldadura WHERE resultado = 'Reparado';

-- 5. Verificación: Comprobar que los registros 'Reparado' ya no existen.
-- Esta consulta debe mostrar la tabla sin los registros eliminados.
SELECT * FROM inspecciones_soldadura;

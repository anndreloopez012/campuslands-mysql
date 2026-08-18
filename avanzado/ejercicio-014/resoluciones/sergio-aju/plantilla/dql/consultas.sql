-- Consultas y configuración del Event Scheduler para la saga de ciencia ficción.
USE campuslands_mysql;

-- Asegurarse de que el Programador de Eventos esté activo en el servidor
SET GLOBAL event_scheduler = ON;

-- -------------------------------------------------------------------------
-- Consulta 1: Vista general de todos los registros de la saga
-- -------------------------------------------------------------------------
SELECT * FROM avanzado_ejercicio_014;


-- -------------------------------------------------------------------------
-- Consulta 2: Resumen agrupado por categoría (heredado de la estructura base)
-- -------------------------------------------------------------------------
SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM avanzado_ejercicio_014
GROUP BY categoria
ORDER BY promedio DESC;


-- -------------------------------------------------------------------------
-- Consulta 3: Ranking de misiones con mayor puntaje (Top 5)
-- -------------------------------------------------------------------------
SELECT 
    nombre,
    categoria,
    puntaje,
    estado
FROM avanzado_ejercicio_014
WHERE estado = 'activo'
ORDER BY puntaje DESC
LIMIT 5;


-- -------------------------------------------------------------------------
-- Consulta 4: Análisis de registros filtrados por estado y categoría con totales
-- -------------------------------------------------------------------------
SELECT 
    estado,
    categoria,
    COUNT(*) AS cantidad_elementos,
    ROUND(SUM(puntaje), 2) AS puntaje_total
FROM avanzado_ejercicio_014
GROUP BY estado, categoria
ORDER BY puntaje_total DESC;


-- -------------------------------------------------------------------------
-- Consulta 5: Consulta analítica usando CASE para clasificar el nivel de riesgo
-- -------------------------------------------------------------------------
SELECT 
    nombre,
    categoria,
    puntaje,
    CASE 
        WHEN puntaje >= 90.00 THEN 'Crítico / Alto Impacto'
        WHEN puntaje >= 75.00 THEN 'Moderado'
        ELSE 'Estándar'
    END AS nivel_riesgo
FROM avanzado_ejercicio_014
ORDER BY puntaje DESC;


-- -------------------------------------------------------------------------
-- Ejemplo de Event Scheduler: Tarea automatizada de mantenimiento
-- (Actualiza registros en 'revision' a 'inactivo' de manera periódica)
-- -------------------------------------------------------------------------
DROP EVENT IF EXISTS ev_actualizar_estado_misiones;

DELIMITER //

CREATE EVENT ev_actualizar_estado_misiones
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    UPDATE avanzado_ejercicio_014
    SET estado = 'inactivo'
    WHERE estado = 'revision' AND creado_en < NOW() - INTERVAL 30 DAY;
END //

DELIMITER ;
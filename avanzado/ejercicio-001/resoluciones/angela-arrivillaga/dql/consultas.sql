-- consultas para verificar los datos despues de las transacciones
USE campuslands_mysql;

-- 1. ver la tabla de equipos con sus puntos actuales
SELECT 
    id,
    nombre,
    puntos,
    estado
FROM equipos
ORDER BY puntos DESC;

-- 2. ver el historial de transferencias realizadas entre equipos
SELECT 
    t.id,
    e1.nombre AS equipo_origen,
    e2.nombre AS equipo_destino,
    t.puntos_transferidos,
    t.fecha_transferencia
FROM transferencias_puntos t
INNER JOIN equipos e1 ON t.equipo_origen_id = e1.id
INNER JOIN equipos e2 ON t.equipo_destino_id = e2.id;

-- 3. calcular el total de puntos que ha enviado cada equipo
SELECT 
    e.nombre AS equipo,
    IFNULL(SUM(t.puntos_transferidos), 0) AS total_puntos_enviados
FROM equipos e
LEFT JOIN transferencias_puntos t ON e.id = t.equipo_origen_id
GROUP BY e.id, e.nombre;

-- 4. consultar equipos activos que tengan mas de 300 puntos
SELECT 
    nombre,
    puntos,
    estado
FROM equipos
WHERE estado = 'activo' AND puntos > 300;

-- 5. promedio de puntos de los equipos agrupados por estado
SELECT 
    estado,
    COUNT(*) AS total_equipos,
    AVG(puntos) AS promedio_puntos
FROM equipos
GROUP BY estado;
USE campuslands_mysql;

-- 1. Directos con el nombre del canal (relacion simple via JOIN)
SELECT c.nombre_canal, d.titulo, d.fecha, d.espectadores_pico
FROM directos_basico d
INNER JOIN creadores_basico c ON c.id_creador = d.id_creador
ORDER BY d.fecha;

-- 2. Directos de un creador especifico
SELECT d.titulo, d.duracion_min, d.espectadores_pico
FROM directos_basico d
INNER JOIN creadores_basico c ON c.id_creador = d.id_creador
WHERE c.nombre_canal = 'MidnightPlays';

-- 3. Cantidad de directos por creador
SELECT c.nombre_canal, COUNT(*) AS total_directos
FROM directos_basico d
INNER JOIN creadores_basico c ON c.id_creador = d.id_creador
GROUP BY c.nombre_canal
ORDER BY total_directos DESC;

-- 4. Pico de espectadores mas alto por creador
SELECT c.nombre_canal, MAX(d.espectadores_pico) AS mayor_pico
FROM directos_basico d
INNER JOIN creadores_basico c ON c.id_creador = d.id_creador
GROUP BY c.nombre_canal
ORDER BY mayor_pico DESC;

-- 5. Creadores con mas de 50000 seguidores
SELECT nombre_canal, categoria_principal, seguidores
FROM creadores_basico
WHERE seguidores > 50000
ORDER BY seguidores DESC;

-- 6. Duracion total transmitida por creador, en horas
SELECT c.nombre_canal, ROUND(SUM(d.duracion_min) / 60, 1) AS horas_transmitidas
FROM directos_basico d
INNER JOIN creadores_basico c ON c.id_creador = d.id_creador
GROUP BY c.nombre_canal
ORDER BY horas_transmitidas DESC;

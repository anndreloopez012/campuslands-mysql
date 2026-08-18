USE campuslands_mysql;

-- 1. Consultar la vista simple de equipos activos
SELECT * FROM vw_equipos_activos;

-- 2. Consultar la vista compleja de tabla de posiciones
SELECT * FROM vw_tabla_posiciones ORDER BY puntos DESC;

-- 3. Insertar un equipo nuevo a traves de la vista simple (demuestra que es actualizable)
INSERT INTO vw_equipos_activos (nombre_equipo, ciudad) VALUES ('Rayo Celeste', 'Zacapa');

-- 4. Confirmar que el nuevo equipo quedo insertado en la tabla real, con estado por defecto
SELECT nombre_equipo, ciudad, estado FROM liga_equipos_v2 WHERE nombre_equipo = 'Rayo Celeste';

-- 5. Equipo sancionado que igual aparece en la tabla de posiciones (caso limite)
SELECT nombre_equipo, partidos_jugados, puntos
FROM vw_tabla_posiciones
WHERE nombre_equipo = 'Halcones FC';
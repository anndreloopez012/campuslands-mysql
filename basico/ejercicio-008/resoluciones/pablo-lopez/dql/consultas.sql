SELECT * FROM equipos_futbol_sala;

UPDATE equipos_futbol_sala
SET puntos = 24
WHERE equipo = 'Tigres FS';

UPDATE equipos_futbol_sala
SET estado = 'Activo'
WHERE equipo = 'Lobos FS';

UPDATE equipos_futbol_sala
SET entrenador = 'Fernando López'
WHERE equipo = 'Toros FS';

SELECT
equipo,
entrenador,
puntos,
estado
FROM equipos_futbol_sala
ORDER BY puntos DESC;
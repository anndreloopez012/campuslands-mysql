USE biblioteca_gamer_db;

-- 1. Informe detallado de la biblioteca: Listar cada videojuego con su plataforma, fabricante, desarrollador, país de origen, precio, horas jugadas y estado en formato de reporte analítico
SELECT v.titulo_juego, pl.nombre_plataforma, d.nombre_desarrollador, d.pais_origen, v.precio_usd, v.horas_jugadas, v.calificacion_metacritic, v.estado_biblioteca
FROM videojuegos v
JOIN plataformas pl ON v.id_plataforma = pl.id_plataforma
JOIN desarrolladores d ON v.id_desarrollador = d.id_desarrollador
ORDER BY v.calificacion_metacritic DESC;

-- 2. Informe agrupado por Plataforma: Calcular la cantidad de juegos registrados, la inversión total en dólares y el promedio de horas invertidas por plataforma
SELECT pl.nombre_plataforma, pl.fabricante, COUNT(v.id_videojuego) AS total_juegos, SUM(v.precio_usd) AS inversion_total_usd, ROUND(AVG(v.horas_jugadas), 1) AS promedio_horas_jugadas
FROM plataformas pl
JOIN videojuegos v ON pl.id_plataforma = v.id_plataforma
GROUP BY pl.id_plataforma, pl.nombre_plataforma, pl.fabricante
ORDER BY inversion_total_usd DESC;

-- 3. Informe agrupado por Desarrollador: Evaluar la productividad analizando cuántos juegos se han desarrollado y la calificación Metacritic máxima alcanzada
SELECT d.nombre_desarrollador, d.pais_origen, COUNT(v.id_videojuego) AS juegos_desarrollados, MAX(v.calificacion_metacritic) AS mejor_metacritic
FROM desarrolladores d
JOIN videojuegos v ON d.id_desarrollador = v.id_desarrollador
GROUP BY d.id_desarrollador, d.nombre_desarrollador, d.pais_origen
ORDER BY mejor_metacritic DESC;

-- 4. Informe filtrado por Estado de Biblioteca: Analizar los títulos que ya se encuentran 'completado' ordenados por horas dedicadas de forma descendente
SELECT v.titulo_juego, pl.nombre_plataforma, v.horas_jugadas, v.calificacion_metacritic, v.estado_biblioteca
FROM videojuegos v
JOIN plataformas pl ON v.id_plataforma = pl.id_plataforma
WHERE v.estado_biblioteca = 'completado'
ORDER BY v.horas_jugadas DESC;

-- 5. Ranking TOP 3 de los videojuegos mejor calificados en Metacritic integrando sus respectivas plataformas y desarrolladores
SELECT v.titulo_juego, pl.nombre_plataforma, d.nombre_desarrollador, v.calificacion_metacritic
FROM videojuegos v
JOIN plataformas pl ON v.id_plataforma = pl.id_plataforma
JOIN desarrolladores d ON v.id_desarrollador = d.id_desarrollador
ORDER BY v.calificacion_metacritic DESC
LIMIT 3;

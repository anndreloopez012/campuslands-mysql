SELECT 
    nombre_equipo, 
    puntos, 
    goles_a_favor, 
    goles_en_contra,
    (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos
ORDER BY puntos DESC, diferencia_goles DESC;

SELECT 
    nombre_equipo, 
    ciudad, 
    estadio
FROM equipos
ORDER BY nombre_equipo ASC;

SELECT 
    nombre_equipo, 
    goles_en_contra, 
    puntos
FROM equipos
ORDER BY goles_en_contra ASC;

SELECT 
    ciudad, 
    nombre_equipo, 
    puntos
FROM equipos
ORDER BY ciudad ASC, puntos DESC;
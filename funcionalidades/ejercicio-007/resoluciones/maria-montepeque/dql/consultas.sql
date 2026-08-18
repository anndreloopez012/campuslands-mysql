-- funcionalidades/ejercicio-007 - maria-montepeque
USE campuslands_mysql;

-- 1. INNER JOIN: solo aparecen jugadores que SI tienen al menos un juego,
-- y juegos que SI tienen un jugador asignado. 'ZenithArc' y los 2 juegos
-- de la lista de deseos quedan fuera.
SELECT
    j.alias,
    g.titulo,
    g.genero,
    g.horas_jugadas
FROM jugadores_gamer j
    INNER JOIN juegos_biblioteca g ON g.jugador_id = j.id
ORDER BY j.alias, g.titulo;

-- 2. LEFT JOIN: aparecen TODOS los jugadores, incluso 'ZenithArc' que no tiene
-- ningun juego (sus columnas de la derecha salen en NULL).
SELECT
    j.alias,
    g.titulo,
    g.horas_jugadas
FROM jugadores_gamer j
    LEFT JOIN juegos_biblioteca g ON g.jugador_id = j.id
ORDER BY j.alias, g.titulo;

-- 3. Mismo LEFT JOIN + WHERE ... IS NULL: patron "anti-join" para encontrar
-- jugadores que NO tienen ningun juego en su biblioteca.
SELECT j.alias, j.plataforma_principal
FROM jugadores_gamer j
    LEFT JOIN juegos_biblioteca g ON g.jugador_id = j.id
WHERE g.id IS NULL;

-- 4. RIGHT JOIN: aparecen TODOS los juegos, incluidos los 2 de la lista de
-- deseos (jugador_id NULL). Sus columnas de jugador salen en NULL.
SELECT
    j.alias,
    g.titulo,
    g.jugador_id
FROM jugadores_gamer j
    RIGHT JOIN juegos_biblioteca g ON g.jugador_id = j.id
ORDER BY (j.alias IS NULL) DESC, g.titulo;

-- 5. SELF JOIN: pares mentor/referido, usando la misma tabla dos veces
-- (jugadores_gamer.referido_por -> jugadores_gamer.id).
SELECT
    mentor.alias AS invito,
    referido.alias AS fue_invitado
FROM jugadores_gamer referido
    INNER JOIN jugadores_gamer mentor ON mentor.id = referido.referido_por
ORDER BY mentor.alias;

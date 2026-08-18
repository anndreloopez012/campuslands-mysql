-- Consultas base. Completa o reemplaza segun el enunciado.
-- dql/consultas.sql
-- Consultas para analizar los datos del torneo MOBA usando INNER JOIN.

USE moba_tournament_intermediate;

-- 1. Listar todos los jugadores y el nombre del equipo al que pertenecen.
-- Esta es la consulta clave que demuestra el INNER JOIN.
SELECT 
    j.nickname AS Nombre_Jugador,
    j.nombre_completo AS Nombre_Completo,
    j.rol AS Rol,
    e.nombre_equipo AS Equipo
FROM jugadores j
INNER JOIN equipos e ON j.equipo_id = e.id;

-- 2. Contar cuántos jugadores tiene cada equipo.
-- Útil para la gestión de plantillas.
SELECT 
    e.nombre_equipo AS Equipo,
    COUNT(j.id) AS Numero_de_Jugadores
FROM equipos e
INNER JOIN jugadores j ON e.id = j.equipo_id
GROUP BY e.nombre_equipo;

-- 3. Listar los jugadores de la región de 'Europa'.
-- Combina INNER JOIN con una cláusula WHERE para un filtrado avanzado.
SELECT 
    j.nickname,
    j.rol,
    e.nombre_equipo,
    e.region
FROM jugadores j
INNER JOIN equipos e ON j.equipo_id = e.id
WHERE e.region = 'Europa';

-- 4. Encontrar todos los jugadores que son 'Mid Laner'.
SELECT j.nickname, e.nombre_equipo
FROM jugadores j
INNER JOIN equipos e ON j.equipo_id = e.id
WHERE j.rol = 'Mid Laner';

-- 5. Mostrar los equipos que tienen 3 o más jugadores registrados.
SELECT 
    e.nombre_equipo,
    COUNT(j.id) AS cantidad_jugadores
FROM equipos e
INNER JOIN jugadores j ON e.id = j.equipo_id
GROUP BY e.nombre_equipo
HAVING cantidad_jugadores >= 3;

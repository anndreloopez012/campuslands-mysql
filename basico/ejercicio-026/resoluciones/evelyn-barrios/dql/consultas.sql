-- dql/consultas.sql
-- Consultas para analizar los datos de los personajes del RPG.

USE rpg_game;

-- 1. Conteo de personajes por clase.
-- Útil para ver el balance de clases en el juego.
SELECT 
    clase, 
    COUNT(*) AS total_personajes
FROM personajes
GROUP BY clase
ORDER BY total_personajes DESC;

-- 2. Top 3 personajes con mayor poder de ataque.
-- Para identificar a los jugadores más fuertes.
SELECT nombre, clase, nivel, puntos_ataque
FROM personajes
ORDER BY puntos_ataque DESC
LIMIT 3;

-- 3. Personajes que pertenecen a la región de 'Gondor'.
SELECT nombre, clase, nivel FROM personajes WHERE region_origen = 'Gondor';

-- 4. Nivel promedio de todos los personajes.
SELECT AVG(nivel) AS nivel_promedio_global FROM personajes;

-- 5. Personajes de clase 'Mago' o 'Arquero' con un nivel superior a 15.
SELECT nombre, clase, nivel
FROM personajes
WHERE clase IN ('Mago', 'Arquero') AND nivel > 15;
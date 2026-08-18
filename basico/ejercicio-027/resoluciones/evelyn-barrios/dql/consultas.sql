-- Consultas base. Completa o reemplaza segun el enunciado.
-- Consultas para analizar el portafolio de proyectos de software.
-- Consultas para analizar los datos de los héroes del videojuego.
USE aventura_juego;

-- 1. Conteo de héroes por clase.
-- Permite ver el balance de clases en el juego.
SELECT 
    clase, 
    COUNT(*) AS total_heroes
FROM heroes
GROUP BY clase
ORDER BY total_heroes DESC;

-- 2. Top 3 héroes con mayor nivel de poder.
-- Identifica a los personajes más fuertes.
SELECT nombre, clase, nivel_poder
FROM heroes
ORDER BY nivel_poder DESC
LIMIT 3;

-- 3. Héroes que se encuentran en el 'Bosque Sombrío'.
SELECT nombre, clase, nivel_poder, estado
FROM heroes
WHERE zona_actual = 'Bosque Sombrío';

-- 4. Nivel de poder promedio por clase.
SELECT clase, AVG(nivel_poder) AS poder_promedio
FROM heroes
GROUP BY clase;

-- 5. Héroes que no están 'Activos'.
-- Útil para saber qué personajes no están disponibles para misiones.
SELECT nombre, clase, estado
FROM heroes
WHERE estado != 'Activo';

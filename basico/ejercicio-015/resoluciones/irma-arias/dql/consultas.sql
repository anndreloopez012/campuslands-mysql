USE db_biblioteca_gamer_irma;

-- Consulta 1: Listado general de videojuegos mostrando su plataforma asociada mediante JOIN
SELECT 
    v.titulo AS Videojuego, 
    v.genero AS Genero, 
    p.nombre_plataforma AS Plataforma, 
    v.precio AS PrecioUSD, 
    v.estado_biblioteca AS Estado
FROM videojuegos v
JOIN plataformas p ON v.plataforma_id = p.id
ORDER BY v.precio DESC;

-- Consulta 2: Conteo de videojuegos agrupados por plataforma de juego
SELECT 
    p.nombre_plataforma AS Plataforma, 
    COUNT(*) AS TotalJuegos
FROM videojuegos v
JOIN plataformas p ON v.plataforma_id = p.id
GROUP BY p.nombre_plataforma
ORDER BY TotalJuegos DESC;

-- Consulta 3: Top 3 de videojuegos más costosos de la biblioteca gamer
SELECT 
    v.titulo AS Videojuego, 
    p.nombre_plataforma AS Plataforma, 
    v.precio AS Precio
FROM videojuegos v
JOIN plataformas p ON v.plataforma_id = p.id
ORDER BY v.precio DESC
LIMIT 3;

-- Consulta 4: Gasto total invertido en la biblioteca agrupado por estado de juego
SELECT 
    v.estado_biblioteca AS Estado, 
    COUNT(*) AS CantidadJuegos, 
    SUM(v.precio) AS InversionTotalUSD
FROM videojuegos v
GROUP BY v.estado_biblioteca;

-- Consulta 5: Videojuegos de género RPG con su respectivo fabricante
SELECT 
    v.titulo AS TituloRPG, 
    p.fabricante AS Fabricante, 
    v.precio AS Precio
FROM videojuegos v
JOIN plataformas p ON v.plataforma_id = p.id
WHERE v.genero = 'RPG';
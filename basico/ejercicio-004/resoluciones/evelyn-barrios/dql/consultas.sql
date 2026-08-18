-- Consultas base. Completa o reemplaza segun el enunciado.
-- Archivo: dql/consultas.sql
-- Archivo: dql/consultas.sql
-- Descripción: Consultas para obtener información de la plataforma de streaming de música.

USE music_streaming;

-- 1. Listar todas las canciones de un álbum específico (ej. 'Discovery')
-- Muestra todas las canciones que pertenecen al álbum 'Discovery'.
SELECT
    c.titulo_cancion AS Cancion,
    c.duracion_segundos AS Duracion
FROM
    canciones c
JOIN
    albumes al ON c.id_album = al.id_album
WHERE
    al.titulo_album = 'Discovery';

-- 2. Encontrar todos los álbumes de un artista específico (ej. 'Daft Punk')
-- Muestra todos los álbumes lanzados por el artista 'Daft Punk'.
SELECT
    al.titulo_album AS Album,
    al.anio_lanzamiento AS Anio
FROM
    albumes al
JOIN
    artistas ar ON al.id_artista = ar.id_artista
WHERE
    ar.nombre_artista = 'Daft Punk';

-- 3. Contar el número de canciones por álbum
-- Muestra cada álbum y el total de canciones que contiene.
SELECT
    al.titulo_album AS Album,
    ar.nombre_artista AS Artista,
    COUNT(c.id_cancion) AS NumeroDeCanciones
FROM
    albumes al
JOIN
    canciones c ON al.id_album = c.id_album
JOIN
    artistas ar ON al.id_artista = ar.id_artista
GROUP BY
    al.id_album
ORDER BY
    NumeroDeCanciones DESC;

-- 4. Encontrar la canción más larga de cada álbum
SELECT
    al.titulo_album AS Album,
    c.titulo_cancion AS CancionMasLarga,
    MAX(c.duracion_segundos) AS DuracionMaxima
FROM
    canciones c
JOIN
    albumes al ON c.id_album = al.id_album
GROUP BY
    al.id_album;

-- 5. Listar las 5 canciones más reproducidas
SELECT
    c.titulo_cancion AS Cancion,
    ar.nombre_artista AS Artista,
    c.reproducciones AS Reproducciones
FROM
    canciones c
JOIN
    albumes al ON c.id_album = al.id_album
JOIN
    artistas ar ON al.id_artista = ar.id_artista
ORDER BY
    c.reproducciones DESC
LIMIT 5;
WHERE
    p.nombre_personaje = 'Aragorn';

-- 3. Contar cuántos ítems de cada rareza existen en el juego
-- Agrupa los ítems por su rareza y cuenta cuántos hay en cada grupo.
SELECT
    rareza AS Rareza,
    COUNT(id_item) AS TotalItems
FROM
    items
GROUP BY
    rareza
ORDER BY
    FIELD(rareza, 'Común', 'Poco Común', 'Raro', 'Épico', 'Legendario');

-- 4. Encontrar qué personajes tienen un ítem específico (ej. 'Poción de Salud Menor')
-- Lista todos los personajes que tienen al menos una 'Poción de Salud Menor' en su inventario.
SELECT
    p.nombre_personaje AS Personaje,
    p.clase AS Clase,
    ip.cantidad AS Cantidad
FROM
    personajes p
JOIN
    inventario_personaje ip ON p.id_personaje = ip.id_personaje
JOIN
    items i ON ip.id_item = i.id_item
WHERE
    i.nombre_item = 'Poción de Salud Menor';

-- 5. Listar los ítems más caros (Top 3)
-- Muestra los 3 ítems con el mayor precio de venta.
SELECT
    nombre_item AS Item,
    precio_venta AS Precio,
    rareza AS Rareza
FROM
    items
ORDER BY
    precio_venta DESC
LIMIT 3;

-- Consultas base. Completa o reemplaza segun el enunciado.
-- Archivo: dql/consultas.sql
-- Descripción: Consultas para obtener información del sistema de inventario de RPG.

USE inventario_rpg;

-- 1. Listar todos los ítems de una categoría específica (ej. 'Arma')
-- Muestra todos los ítems que pertenecen a la categoría 'Arma'.
SELECT
    i.nombre_item AS Item,
    i.rareza AS Rareza,
    i.precio_venta AS Precio
FROM
    items i
JOIN
    categorias_item ci ON i.id_categoria = ci.id_categoria
WHERE
    ci.nombre_categoria = 'Arma';

-- 2. Mostrar el inventario completo de un personaje específico (ej. 'Aragorn')
-- Muestra todos los ítems, su cantidad y rareza que posee el personaje 'Aragorn'.
SELECT
    p.nombre_personaje AS Personaje,
    i.nombre_item AS Item,
    ip.cantidad AS Cantidad,
    i.rareza AS Rareza
FROM
    inventario_personaje ip
JOIN
    personajes p ON ip.id_personaje = p.id_personaje
JOIN
    items i ON ip.id_item = i.id_item
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

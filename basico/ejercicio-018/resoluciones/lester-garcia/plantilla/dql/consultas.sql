USE ejercicio_18;
-- Mostrar todos los destinos
SELECT
    id_destino,
    nombre,
    pais,
    ciudad
FROM destinos
ORDER BY id_destino;
-- Mostrar los paquetes con su destino
SELECT
    p.id_paquete,
    p.nombre AS paquete,
    d.nombre AS destino,
    d.pais,
    p.precio,
    p.duracion_dias
FROM paquetes p
INNER JOIN destinos d
    ON p.id_destino = d.id_destino
ORDER BY p.precio DESC;

-- Mostrar las reservas confirmadas
SELECT
    r.id_reserva,
    c.nombre AS cliente,
    p.nombre AS paquete,
    r.fecha_reserva,
    r.cantidad_personas,
    r.estado
FROM reservas r
INNER JOIN clientes c
    ON r.id_cliente = c.id_cliente
INNER JOIN paquetes p
    ON r.id_paquete = p.id_paquete
WHERE r.estado = 'Confirmada'
ORDER BY r.fecha_reserva;
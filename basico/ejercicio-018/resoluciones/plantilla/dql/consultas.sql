SELECT 
    d.destino_id,
    d.nombre_destino,
    d.pais,
    p.paquete_id,
    p.codigo_paquete,
    p.nombre_paquete,
    p.duracion_dias,
    p.precio_usd
FROM destinos_turisticos d
INNER JOIN paquetes_turismo p ON d.destino_id = p.destino_id
ORDER BY p.precio_usd DESC;

SELECT 
    r.reserva_id,
    c.nombre_completo AS cliente,
    c.pasaporte_dni,
    p.nombre_paquete,
    r.fecha_reserva,
    r.fecha_viaje,
    r.estado_reserva,
    p.precio_usd
FROM reservas_viajes r
INNER JOIN clientes_viajeros c ON r.cliente_id = c.cliente_id
INNER JOIN paquetes_turismo p ON r.paquete_id = p.paquete_id
ORDER BY r.fecha_viaje ASC;
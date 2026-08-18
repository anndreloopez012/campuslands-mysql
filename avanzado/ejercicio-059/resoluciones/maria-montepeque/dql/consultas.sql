USE campuslands_mysql;

-- 1. Estado actual de todas las ofertas
SELECT id_oferta, producto, categoria, estado, fecha_inicio, fecha_fin
FROM ofertas_marketplace_avanzado
ORDER BY fecha_fin;

-- 2. Ofertas que el event scheduler ya marco como expiradas
SELECT producto, precio_original, precio_oferta, fecha_fin
FROM ofertas_marketplace_avanzado
WHERE estado = 'expirada'
ORDER BY fecha_fin;

-- 3. Bitacora generada automaticamente por el event (sin intervencion manual)
SELECT a.id_log, o.producto, a.accion, a.ejecutado_en
FROM auditoria_ofertas_marketplace_avanzado a
INNER JOIN ofertas_marketplace_avanzado o ON o.id_oferta = a.id_oferta
ORDER BY a.id_log;

-- 4. Ofertas vigentes en este momento (activa y dentro del rango de fechas)
SELECT producto, precio_original, precio_oferta, fecha_fin
FROM ofertas_marketplace_avanzado
WHERE estado = 'activa' AND NOW() BETWEEN fecha_inicio AND fecha_fin
ORDER BY fecha_fin;

-- 5. Ofertas que todavia no empiezan
SELECT producto, fecha_inicio, fecha_fin
FROM ofertas_marketplace_avanzado
WHERE estado = 'programada' AND fecha_inicio > NOW()
ORDER BY fecha_inicio;

-- 6. Detalle del event scheduler configurado (confirma que sigue activo)
SELECT EVENT_NAME, STATUS, EVENT_TYPE, INTERVAL_VALUE, INTERVAL_FIELD, STARTS
FROM information_schema.EVENTS
WHERE EVENT_SCHEMA = 'campuslands_mysql' AND EVENT_NAME = 'ev_expirar_ofertas_marketplace_avanzado';

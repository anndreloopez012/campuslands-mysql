USE hiperdeportivos_2fn_db;

-- 1. Listar los hiperdeportivos con su respectivo fabricante, especificaciones de motor, potencia y precio en un reporte completo en 2FN
SELECT h.modelo, f.nombre_fabricante, f.pais_origen, m.tipo_motor, m.aspiracion, h.potencia_hp, h.precio_usd
FROM hiperdeportivos_2fn h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
JOIN caracteristicas_motor m ON h.id_motor = m.id_motor
ORDER BY h.potencia_hp DESC;

-- 2. Agrupar por fabricante para calcular la velocidad máxima y la potencia promedio de sus modelos bajo el esquema normalizado
SELECT f.nombre_fabricante, COUNT(h.id_auto) AS total_modelos, MAX(h.velocidad_max_kmh) AS velocidad_maxima, AVG(h.potencia_hp) AS potencia_promedio
FROM hiperdeportivos_2fn h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
GROUP BY f.id_fabricante, f.nombre_fabricante
ORDER BY velocidad_maxima DESC;

-- 3. Agrupar por tipo de motor para evaluar el rendimiento promedio en velocidad y el valor de mercado acumulado
SELECT m.tipo_motor, m.aspiracion, COUNT(h.id_auto) AS cantidad_autos, AVG(h.velocidad_max_kmh) AS velocidad_promedio, SUM(h.precio_usd) AS valor_total_mercado
FROM hiperdeportivos_2fn h
JOIN caracteristicas_motor m ON h.id_motor = m.id_motor
GROUP BY m.id_motor, m.tipo_motor, m.aspiracion
ORDER BY valor_total_mercado DESC;

-- 4. Consultar hiperdeportivos cuyo estado sea 'en_produccion' o 'limitado' y cuya velocidad máxima supere los 400 km/h
SELECT h.modelo, f.nombre_fabricante, h.velocidad_max_kmh, h.estado_produccion, h.precio_usd
FROM hiperdeportivos_2fn h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
WHERE h.estado_produccion IN ('en_produccion', 'limitado') AND h.velocidad_max_kmh > 400
ORDER BY h.velocidad_max_kmh DESC;

-- 5. Ranking TOP 3 de los hiperdeportivos más veloces integrando fabricante y características técnicas normalizadas
SELECT h.modelo, f.nombre_fabricante, m.tipo_motor, h.velocidad_max_kmh
FROM hiperdeportivos_2fn h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
JOIN caracteristicas_motor m ON h.id_motor = m.id_motor
ORDER BY h.velocidad_max_kmh DESC
LIMIT 3;

USE db_carreras_urbanas;

-- Consulta 1: Total de corredores e ingresos recaudados agrupados por categoría de distancia (utilizando COUNT y SUM)
SELECT categoria_distancia, COUNT(*) AS total_corredores, SUM(costo_inscripcion) AS ingresos_totales
FROM participantes_carreras
GROUP BY categoria_distancia;

-- Consulta 2: Conteo y suma de kilómetros recorridos agrupados por el estado de pago de las inscripciones
SELECT estado_pago, COUNT(*) AS cantidad_participantes, SUM(kilometros_recorridos) AS kilometros_acumulados
FROM participantes_carreras
GROUP BY estado_pago;

-- Consulta 3: Conteo general de participantes que tienen su pago en estado 'pagado' ordenados por costo
SELECT categoria_distancia, COUNT(*) AS total_pagados, SUM(costo_inscripcion) AS recaudacion_categoria
FROM participantes_carreras
WHERE estado_pago = 'pagado'
GROUP BY categoria_distancia
ORDER BY recaudacion_categoria DESC;

-- Consulta 4: Top de categorías con mayor recaudación total (utilizando SUM ordenado descendentemente con límite)
SELECT categoria_distancia, SUM(costo_inscripcion) AS recaudo_total
FROM participantes_carreras
WHERE estado_pago = 'pagado'
GROUP BY categoria_distancia
ORDER BY recaudo_total DESC
LIMIT 2;

-- Consulta 5: Resumen global de toda la tabla evaluando cantidad total de registros y suma absoluta de ingresos proyectados
SELECT COUNT(*) AS total_inscritos_general, SUM(costo_inscripcion) AS suma_total_recaudacion_potencial, SUM(kilometros_recorridos) AS total_kms_global
FROM participantes_carreras;
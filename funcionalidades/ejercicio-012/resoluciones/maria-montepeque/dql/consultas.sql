-- funcionalidades/ejercicio-012 - maria-montepeque
USE campuslands_mysql;

-- 1. Procedimiento con parametro IN: citas de Renata Salgado (artista_id = 1).
CALL sp_listar_citas_artista(1);

-- 2. sp_agendar_cita calcula el costo solo (2.5 horas * 45.00 = 112.50) usando
-- la tarifa ACTUAL del artista, sin que quien llama tenga que calcularlo.
CALL sp_agendar_cita(1, 'Bianca Ferrer', '2026-09-12', 2.5);

SELECT id, cliente, horas_estimadas, estado, costo_total
FROM citas_tatuaje
WHERE cliente = 'Bianca Ferrer';

-- 3. Parametros OUT: resumen de Renata ANTES de completar la cita de Miguel
-- Torres (2 citas completadas, 135.00 + 90.00 = 225.00).
CALL sp_resumen_artista(1, @total_citas, @ingresos_totales);
SELECT @total_citas AS total_citas, @ingresos_totales AS ingresos_totales;

-- 4. Cambia el estado de la cita 3 (Miguel Torres, estaba 'agendada') a
-- 'completada', y se repite el resumen: ahora deben ser 3 citas y 405.00.
CALL sp_completar_cita(3);

SELECT id, cliente, estado FROM citas_tatuaje WHERE id = 3;

CALL sp_resumen_artista(1, @total_citas_2, @ingresos_totales_2);
SELECT @total_citas_2 AS total_citas, @ingresos_totales_2 AS ingresos_totales;

-- 5. CURSOR dentro del procedimiento: sube la tarifa de Daniela Fox (artista 3)
-- de 40.00 a 48.00 y recalcula SOLO su cita 'agendada' (Diego Salas, id 9,
-- 2.0 horas -> pasa de 80.00 a 96.00). Sus citas 'completada' (7 y 8) no cambian.
CALL sp_recalcular_tarifas(3, 48.00);

SELECT nombre, tarifa_hora FROM artistas_tatuaje WHERE id = 3;

SELECT id, cliente, estado, horas_estimadas, costo_total
FROM citas_tatuaje
WHERE artista_id = 3
ORDER BY id;

-- === Estas dos llamadas DEBEN fallar (se ejecutan aparte, ver evidencias/resultados_consultas.txt) ===
--
-- 6. Completar una cita que YA esta completada (id 3, la de Miguel Torres del paso 4).
-- CALL sp_completar_cita(3);
--
-- 7. Completar una cita cancelada (id 5, Oscar Paredes).
-- CALL sp_completar_cita(5);

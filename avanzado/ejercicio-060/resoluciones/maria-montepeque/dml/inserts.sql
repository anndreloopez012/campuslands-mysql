-- Datos de practica: 5000 interacciones de chat sinteticas, generadas
-- con un CTE recursivo, repartidas entre 5 creadores. Se necesita este
-- volumen (mucho mas que los ~8 registros tipicos de otros ejercicios)
-- para que el optimizador de MySQL tenga motivos reales para preferir
-- un indice sobre un escaneo completo: con pocas filas, MySQL casi
-- siempre prefiere el escaneo completo.
USE campuslands_mysql;

INSERT INTO interacciones_chat_avanzado (creador, usuario, tipo_interaccion, fecha)
WITH RECURSIVE numeros AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 FROM numeros WHERE n < 1000
)
SELECT
  ELT(1 + ((n + m.mult) % 5), 'MidnightPlays', 'InkAndCanvas', 'LoFiLoungeRadio', 'DevWithSara', 'RetroGlitchTV') AS creador,
  CONCAT('user_', n, '_', m.mult) AS usuario,
  ELT(1 + ((n * m.mult) % 4), 'mensaje', 'suscripcion', 'donacion', 'ban') AS tipo_interaccion,
  DATE_ADD('2026-01-01 00:00:00', INTERVAL (n * 5 + m.mult) MINUTE) AS fecha
FROM numeros
CROSS JOIN (SELECT 1 AS mult UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) AS m;

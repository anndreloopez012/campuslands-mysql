SELECT *
FROM carreras_urbanas;

SELECT *
FROM carreras_urbanas;

SELECT
COUNT(*) AS total_corredores
FROM carreras_urbanas;

SELECT
COUNT(*) AS corredores_finalizaron
FROM carreras_urbanas
WHERE estado='Finalizó';

SELECT
SUM(premio) AS premios_top3
FROM carreras_urbanas
WHERE posicion <= 3;
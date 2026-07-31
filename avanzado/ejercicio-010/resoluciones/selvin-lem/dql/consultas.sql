USE campuslands_mysql;

-- 1. Confirmar que los datos existen antes del backup
SELECT COUNT(*) AS total_registros FROM carreras_urbanas_resultados;

-- 2. Resultados validos ordenados por premio
SELECT piloto, circuito, premio
FROM carreras_urbanas_resultados
WHERE estado = 'valido'
ORDER BY premio DESC;

-- 3. Premio total entregado por circuito
SELECT circuito, SUM(premio) AS premio_total
FROM carreras_urbanas_resultados
GROUP BY circuito
ORDER BY premio_total DESC;

-- 4. Resultados descalificados o en revision (caso limite, se respaldan igual)
SELECT piloto, circuito, estado
FROM carreras_urbanas_resultados
WHERE estado IN ('descalificado', 'en_revision');

-- 5. Confirmar cantidad de registros DESPUES de restaurar el backup (debe ser igual a la consulta 1)
SELECT COUNT(*) AS total_registros_tras_restauracion FROM carreras_urbanas_resultados;
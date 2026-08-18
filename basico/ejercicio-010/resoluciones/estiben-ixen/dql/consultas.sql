USE campuslands_mysql;

-- ==========================================
-- CONSULTA 1
-- Total de corredores inscritos
-- ==========================================

SELECT
    COUNT(*) AS Total_Corredores
FROM corredores_carreras_urbanas;


-- ==========================================
-- CONSULTA 2
-- Total de kilómetros recorridos
-- ==========================================

SELECT
    SUM(distancia_km) AS Total_Kilometros
FROM corredores_carreras_urbanas
WHERE estado = 'Finalizado';


-- ==========================================
-- CONSULTA 3
-- Total de corredores que finalizaron
-- ==========================================

SELECT
    COUNT(*) AS Corredores_Finalizados
FROM corredores_carreras_urbanas
WHERE estado = 'Finalizado';


-- ==========================================
-- CONSULTA 4
-- Suma del tiempo empleado por corredores finalizados
-- ==========================================

SELECT
    SUM(tiempo_minutos) AS Tiempo_Total_Minutos
FROM corredores_carreras_urbanas
WHERE estado = 'Finalizado';


-- ==========================================
-- CONSULTA 5
-- Total de corredores por categoría 10K y 21K
-- ==========================================

SELECT
    COUNT(*) AS Total_Corredores
FROM corredores_carreras_urbanas
WHERE categoria IN ('10K','21K');


-- ==========================================
-- CONSULTA 6
-- Suma de kilómetros en la categoría 42K
-- ==========================================

SELECT
    SUM(distancia_km) AS Kilometros_Maraton
FROM corredores_carreras_urbanas
WHERE categoria = '42K';
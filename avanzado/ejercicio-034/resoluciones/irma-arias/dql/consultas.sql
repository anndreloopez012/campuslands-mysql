-- DQL: Consultas analíticas y de reportes para garaje de motos
USE db_garaje_motos;

-- 1. Listado completo de motocicletas ordenadas de mayor a menor tarifa diaria
SELECT placa_moto, marca_moto, modelo_moto, cilindrada_cc, tarifa_dia, fecha_ingreso, estado_moto
FROM motos_garaje
ORDER BY tarifa_dia DESC;

-- 2. Filtrar motocicletas que se encuentren 'estacionada' o 'en_ruta' ordenadas por cilindrada
SELECT placa_moto, marca_moto, modelo_moto, cilindrada_cc, tarifa_dia, fecha_ingreso, estado_moto
FROM motos_garaje
WHERE estado_moto IN ('estacionada', 'en_ruta')
ORDER BY cilindrada_cc DESC;

-- 3. Agrupar por estado de la moto para analizar la cantidad de unidades, la tarifa máxima y el promedio de cilindrada por categoría operativa
SELECT estado_moto, COUNT(*) AS total_motos, MAX(tarifa_dia) AS tarifa_maxima, ROUND(AVG(cilindrada_cc), 2) AS cilindrada_promedio
FROM motos_garaje
GROUP BY estado_moto
ORDER BY total_motos DESC;

-- 4. Ranking TOP 3 de las motocicletas más costosas por tarifa diaria en el garaje
SELECT placa_moto, marca_moto, modelo_moto, cilindrada_cc, tarifa_dia, fecha_ingreso, estado_moto
FROM motos_garaje
ORDER BY tarifa_dia DESC
LIMIT 3;

-- 5. Resumen financiero y técnico global del garaje (Promedio general de tarifa diaria y suma total de cilindradas activas)
SELECT ROUND(AVG(tarifa_dia), 2) AS tarifa_promedio_general, SUM(cilindrada_cc) AS suma_cilindradas_activas
FROM motos_garaje
WHERE estado_moto != 'retirada';
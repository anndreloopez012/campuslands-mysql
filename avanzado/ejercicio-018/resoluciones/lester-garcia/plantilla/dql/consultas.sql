USE ejercicio_18_adv;
-- funciones sql
-- -------------------------------------------------------
-- 1. funcion UPPER
-- CONVERTIR NOMBRES DE DESTINOS A MAYUSCULAS

SELECT destination_name,
UPPER(destination_name) AS destination_upper
from destinations;

-- --------------------------------------------------
-- 2. funcion LOWER
-- convertir correos a minusculas

SELECT traveler_name,
LOWER(email) as email_lower
from travelers;

-- ---------------------------------------------------
-- 3. funcion LENGTH
-- obtener cantidad de carateres del nombre del destino
SELECT
    destination_name,
    LENGTH(destination_name) AS name_length
FROM destinations;

-- ------------------------------------------------------
-- 4.funcion ROUND
-- CALCULAR costo promedio por dia de viajes.

SELECT 
trip_id, total_cost, days, 
ROUND(total_cost/ days, 2)AS daily_cost
from trips;

-- 5.funcion CONCAT
-- DESCRIBIR viaje

SELECT
t.trip_id,
CONCAT(tr.traveler_name, ' traveled to ',
d.destination_name)
AS trip_description
from trips t
INNER JOIN  travelers tr
ON t.traveler_id = tr.traveler_id
INNER JOIN destinations d 
ON t.destination_id = d.destination_id;
-- ---------------------------------------------------
-- 6. funcion DATEDIFF
-- CALCULAR dias transcurridos desde el viaje

SELECT 
trip_id,
travel_date,
DATEDIFF(CURRENT_DATE, travel_date) AS days_since_trip
FROM trips;

-- ----------------------------------------------------
-- 7. funcion COALESCE
-- MOSTRAR UN VALOR alternativo cuando sea necesario

SELECT
 traveler_name,
 COALESCE(email, 'NO email available') AS contact_email
 FROM travelers;
 
-- =====================================================
-- 8. Función MAX
-- Obtener el viaje más costoso


SELECT
    MAX(total_cost) AS highest_trip_cost
FROM trips;


-- =====================================================
-- 9. Función MIN
-- Obtener el viaje menos costoso


SELECT
    MIN(total_cost) AS lowest_trip_cost
FROM trips;

-- ------------------------------------------------------
-- 10. Función AVG()
-- Obtener el costo promedio de los viajes

SELECT
    ROUND(AVG(total_cost), 2) AS average_trip_cost
FROM trips;


-- =====================================================
-- 11. Función SUM()
-- Obtener el dinero total gastado en viajes

SELECT
    SUM(total_cost) AS total_travel_expenses
FROM trips;

-- -------------------------------------------------
-- 12. Función COUNT()
-- Contar la cantidad de viajes registrados

SELECT
    COUNT(*) AS total_trips
FROM trips;




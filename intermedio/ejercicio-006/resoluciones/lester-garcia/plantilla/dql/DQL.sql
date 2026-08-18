USE ejercicio_06_int;

SELECT  cu.customer_name, c.model_name
FROM sales s
INNER JOIN customers cu
ON s.customer_id = cu.customer_id
INNER JOIN cars c
ON s.car_id = c.car_id;

SELECT model_name, horsepower
FROM cars
WHERE horsepower > 1200;

SELECT * 
FROM sales
WHERE YEAR(sale_date) = 2026;

SELECT * 
FROM brands
ORDER BY brand_name;

SELECT COUNT(*) AS total_cars
FROM cars;
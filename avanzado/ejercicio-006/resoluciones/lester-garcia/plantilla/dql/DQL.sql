USE ejercicio_06_adv;

-- 1. Analizar una búsqueda por potencia
EXPLAIN
SELECT *
FROM cars
WHERE horsepower > 1200;

-- 2. Analizar un JOIN entre autos y marcas
EXPLAIN
SELECT
    c.model_name,
    b.brand_name
FROM cars c
INNER JOIN brands b
ON c.brand_id = b.brand_id;

-- 3. Analizar un JOIN entre ventas y clientes
EXPLAIN
SELECT
    cu.customer_name,
    s.total
FROM sales s
INNER JOIN customers cu
ON s.customer_id = cu.customer_id;

-- 4. Analizar una consulta con ORDER BY
EXPLAIN
SELECT *
FROM cars
ORDER BY horsepower DESC;

-- 5. Analizar una consulta con WHERE y JOIN
EXPLAIN
SELECT
    c.model_name,
    b.brand_name
FROM cars c
INNER JOIN brands b
ON c.brand_id = b.brand_id
WHERE c.price > 2000000;

-- 6. Analizar una consulta de ventas
EXPLAIN
SELECT
    s.sale_date,
    s.total,
    c.model_name
FROM sales s
INNER JOIN cars c
ON s.car_id = c.car_id;
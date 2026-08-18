-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los empleados con el nombre de su departamento, ordenados por apellido y nombre.
SELECT
  e.nombre,
  e.apellido,
  e.email,
  d.nombre AS departamento,
  e.fecha_contratacion,
  e.salario,
  e.estado
FROM empleados AS e
JOIN departamentos AS d
  ON e.id_departamento = d.id
ORDER BY
  e.apellido ASC,
  e.nombre ASC;

-- 2. Contar el número de empleados por departamento.
SELECT
  d.nombre AS departamento,
  COUNT(e.id) AS total_empleados
FROM departamentos AS d
LEFT JOIN empleados AS e
  ON d.id = e.id_departamento
GROUP BY
  d.nombre
ORDER BY
  total_empleados DESC;

-- 3. Encontrar los empleados contratados después del 1 de enero de 2020.
SELECT nombre, apellido, fecha_contratacion, salario, d.nombre AS departamento
FROM empleados AS e
JOIN departamentos AS d
  ON e.id_departamento = d.id
WHERE
  fecha_contratacion > '2020-01-01'
ORDER BY
  fecha_contratacion ASC;

-- 4. Listar empleados con un salario superior a 60000.00.
SELECT nombre, apellido, salario, d.nombre AS departamento
FROM empleados AS e
JOIN departamentos AS d
  ON e.id_departamento = d.id
WHERE
  salario > 60000.00
ORDER BY
  salario DESC;

-- 5. Mostrar el empleado con el salario más alto y el más bajo.
SELECT 'Salario Más Alto' AS tipo, nombre, apellido, salario, d.nombre AS departamento
FROM empleados AS e
JOIN departamentos AS d ON e.id_departamento = d.id
ORDER BY salario DESC LIMIT 1
UNION ALL
SELECT 'Salario Más Bajo' AS tipo, nombre, apellido, salario, d.nombre AS departamento
FROM empleados AS e
JOIN departamentos AS d ON e.id_departamento = d.id
ORDER BY salario ASC LIMIT 1;

-- 6. Listar todos los empleados del departamento de 'Desarrollo de Software' que están activos.
SELECT nombre, apellido, email, fecha_contratacion, salario
FROM empleados AS e
JOIN departamentos AS d
  ON e.id_departamento = d.id
WHERE
  d.nombre = 'Desarrollo de Software' AND e.estado = 'activo'
ORDER BY
  nombre ASC;
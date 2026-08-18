-- funcionalidades/ejercicio-013 - maria-montepeque
USE campuslands_mysql;

-- 1. Funcion usada como una columna mas del SELECT: clasifica cada
-- ilustracion segun su cantidad de capas.
SELECT
    titulo,
    capas,
    fn_nivel_complejidad(capas) AS complejidad
FROM ilustraciones
ORDER BY capas DESC;

-- 2. Otra funcion combinada con un JOIN: precio base de cada ilustracion
-- usando la tarifa del ilustrador que la hizo.
SELECT
    d.alias,
    i.titulo,
    i.horas_trabajadas,
    d.tarifa_hora_base,
    fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base) AS subtotal
FROM ilustraciones i
    INNER JOIN ilustradores_digitales d ON d.id = i.ilustrador_id
ORDER BY subtotal DESC;

-- 3. Funciones ANIDADAS: el resultado de fn_precio_base() se usa como
-- argumento de fn_bono_nivel(), y ambas se suman en la misma fila.
SELECT
    d.alias,
    d.nivel,
    i.titulo,
    fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base) AS subtotal,
    fn_bono_nivel(d.nivel, fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base)) AS bono,
    fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base)
        + fn_bono_nivel(d.nivel, fn_precio_base(i.horas_trabajadas, d.tarifa_hora_base)) AS total_a_pagar
FROM ilustraciones i
    INNER JOIN ilustradores_digitales d ON d.id = i.ilustrador_id
ORDER BY total_a_pagar DESC;

-- 4. La misma funcion usada en el WHERE, no solo en el SELECT (algo que un
-- procedimiento almacenado no puede hacer): solo ilustraciones 'Compleja'.
SELECT titulo, capas
FROM ilustraciones
WHERE fn_nivel_complejidad(capas) = 'Compleja'
ORDER BY capas DESC;

-- 5. Funcion NOT DETERMINISTIC (usa CURDATE()): dias transcurridos desde la
-- entrega de cada ilustracion.
SELECT
    titulo,
    fecha_entrega,
    fn_dias_desde_entrega(fecha_entrega) AS dias_desde_entrega
FROM ilustraciones
ORDER BY dias_desde_entrega;

-- 6. Funcion que consulta OTRA tabla (fn_ingresos_ilustrador) usada como
-- columna directa sobre ilustradores_digitales: cada fila dispara su propia
-- consulta interna y devuelve un solo valor ya calculado.
SELECT
    alias,
    nivel,
    tarifa_hora_base,
    fn_ingresos_ilustrador(id) AS ingresos_totales
FROM ilustradores_digitales
ORDER BY ingresos_totales DESC;

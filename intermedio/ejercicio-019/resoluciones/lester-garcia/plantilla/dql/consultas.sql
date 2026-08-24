USE ejercicio_19_int;

-- uso de HAVING
-- 1.paracaidismo con mas de dos saltos exitosos

SELECT 
p.nombre AS paracaidismo,
p.nivel,
COUNT(ps.id_salto) AS saltos_exitosos
FROM paracaidistas p 
 INNER JOIN participantes_salto ps 
 ON  p.id_paracaidista = ps.id_paracaidista
 WHERE ps.resultado = 'Exitoso'
 GROUP BY
     p.id_paracaidista,
     p.nombre,
     p.nivel
HAVING COUNT(ps.id_salto) > 2
ORDER BY  saltos_exitosos DESC;

-- 2. instructores con mas de dos saltos realizados

SELECT 
i.nombre AS  instructor,
i.especialidad,
    COUNT(s.id_salto) AS  saltos_realizados
FROM instructores i
INNER JOIN saltos s
   ON  i.id_instructor = s.id_instructor
GROUP BY 
i.id_instructor,
i.nombre,
i.especialidad
HAVING COUNT(s.id_salto) >2
ORDER BY saltos_realizados DESC;

-- 3.Zonas con mas de tres participantes exitosos
SELECT
    z.nombre AS zona_salto,
    z.ciudad,
    COUNT(ps.id_paracaidista) AS participantes_exitosos
FROM zonas_salto z
INNER JOIN saltos s
    ON z.id_zona = s.id_zona
INNER JOIN participantes_salto ps
    ON s.id_salto = ps.id_salto
WHERE ps.resultado = 'Exitoso'
GROUP BY
    z.id_zona,
    z.nombre,
    z.ciudad
HAVING COUNT(ps.id_paracaidista) > 3
ORDER BY participantes_exitosos DESC;

-- 4. tipos de saltos con ingresos superiores a 2,000.00

SELECT
    s.tipo_salto,
    COUNT(s.id_salto) AS cantidad_saltos,
    SUM(s.costo) AS ingresos_generados
FROM saltos s
GROUP BY s.tipo_salto
HAVING SUM(s.costo) > 2000000
ORDER BY ingresos_generados DESC;

 
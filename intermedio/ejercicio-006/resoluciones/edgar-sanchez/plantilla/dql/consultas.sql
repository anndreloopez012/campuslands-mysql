

SELECT 
    a.auto_id,
    a.marca,
    a.modelo,
    e.nombre_caracteristica,
    e.categoria
FROM autos_hiperdeportivos a
INNER JOIN equipamientos_hiperdeportivos e ON a.auto_id = e.auto_id
ORDER BY a.marca ASC, e.categoria ASC;

SELECT 
    a.marca,
    a.modelo,
    COUNT(e.equipamiento_id) AS total_caracteristicas_registradas
FROM autos_hiperdeportivos a
LEFT JOIN equipamientos_hiperdeportivos e ON a.auto_id = e.auto_id
GROUP BY a.auto_id, a.marca, a.modelo
ORDER BY total_caracteristicas_registradas DESC;

SELECT 
    a.marca,
    a.modelo,
    e.nombre_caracteristica
FROM autos_hiperdeportivos a
INNER JOIN equipamientos_hiperdeportivos e ON a.auto_id = e.auto_id
WHERE e.categoria = 'Motorización';
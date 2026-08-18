-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    id,
    nombre,
    categoria,
    ciudad
FROM corredores;

SELECT
    c.nombre,
    c.categoria,
    r.posicion,
    r.tiempo
FROM corredores c
INNER JOIN resultados r
ON c.id = r.corredor_id;

SELECT
    COUNT(*) AS total_corredores
FROM corredores;

SELECT
    MIN(tiempo) AS mejor_tiempo
FROM resultados;

SELECT
    nombre,
    ciudad
FROM corredores
WHERE categoria='10K';

SELECT
    COUNT(*) AS registros_corredores,
    (SELECT COUNT(*) FROM resultados) AS registros_resultados;

/*
#!/bin/bash

mysqldump -u root -p campuslands_mysql > campuslands_mysql_backup.sql

echo "Backup generado correctamente."

#!/bin/bash

mysql -u root -p campuslands_mysql < campuslands_mysql_backup.sql

echo "Base de datos restaurada correctamente."
*/

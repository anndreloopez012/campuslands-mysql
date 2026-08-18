# Resolucion - Ejercicio 060 (intermedio)

## Autor
maria-montepeque

## Que hice
Modele un flujo de carga de datos con dos tablas: una de **staging**
(`creadores_staging_intermedio`, texto libre, sin restricciones, tal
como llegarian datos crudos de un archivo externo) y la tabla
**final** (`creadores_intermedio`, tipada y validada). La carga real
sucede con un `INSERT ... SELECT` que limpia los datos de la staging
hacia la final: `TRIM` para espacios, `LOWER` para normalizar
categorias, `CAST` para convertir texto a numero, `DISTINCT` para
colapsar duplicados, y un `WHERE` que descarta filas invalidas.

## Sobre LOAD DATA INFILE (hallazgo real de privilegios)
La forma "clasica" de cargar un CSV masivo en MySQL es
`LOAD DATA INFILE`. La intente con el usuario `campus` del
`docker-compose` de este repo y obtuve:
```
ERROR 1045 (28000): Access denied for user 'campus'@'%' (using password: YES)
```
Confirme la causa: `LOAD DATA INFILE` (la variante que lee un archivo
ya ubicado en el servidor) requiere el privilegio global `FILE`, que
`campus` no tiene (solo tiene `ALL PRIVILEGES` sobre el esquema
`campuslands_mysql`, no privilegios globales). Como esta resolucion
debe poder ejecutarse con el usuario normal del proyecto, la carga
masiva se resolvio con el patron staging + `INSERT ... SELECT`, que
cumple el mismo objetivo (cargar y validar datos externos) sin
depender de un privilegio que el usuario del curso no tiene.

## Resultado real de la limpieza
9 filas crudas entraron a la staging; 4 creadores unicos y validos
llegaron a la tabla final (3 pares de duplicados se colapsaron en 1
cada uno, y 2 filas se descartaron: una con `nombre_canal` vacio y
otra con `seguidores` vacio).

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Comparacion de filas crudas vs filas limpias finales.
2. Listado final ya limpio y validado.
3. Creadores por categoria.
4. Creador con mas seguidores.
5. Confirmacion de que no quedaron duplicados.
6. Filas de staging descartadas durante la limpieza.

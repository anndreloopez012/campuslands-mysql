# Ejercicio 012 - Window Functions para Playlist Musical

Solución desarrollada para el módulo avanzado de MySQL, enfocada en el análisis de datos de una playlist musical aplicando **Funciones de Ventana** (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `AVG() OVER`, etc.).

## Estructura de la Solución
- `ddl/schema.sql`: Creación de la base de datos `campuslands_mysql` y la tabla `avanzado_ejercicio_012`.
- `dml/inserts.sql`: Carga de 9 pistas musicales variadas categorizadas por género con sus respectivos puntajes de popularidad.
- `dql/consultas.sql`: Consultas analíticas que incluyen la base requerida y reportes avanzados utilizando funciones de ventana.

## Instrucciones de Ejecución
Ejecuta los scripts en orden en tu gestor MySQL:
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
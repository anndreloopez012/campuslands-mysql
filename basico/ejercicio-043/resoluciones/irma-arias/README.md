# Módulo de Datos - Catálogo de Películas de Miedo (Ejercicio 043)

Solución desarrollada en **MySQL** orientada a la práctica de **filtros por estado**, validaciones numéricas estrictas y consultas analíticas sobre un catálogo cinematográfico de terror.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_peliculas_terror` y la tabla `peliculas` con tipos de datos estructurados, enums de estado y restricciones de validación `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de películas emblemáticas de terror con diversos subgéneros, calificaciones IMDB y estados variados.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtrado por estado, funciones de agregación (`COUNT`, `AVG`, `MIN`), agrupaciones (`GROUP BY`) y restricciones de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
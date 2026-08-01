# Módulo de Datos - Catálogo de Películas de Miedo (Ejercicio 013 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la aplicación profesional de filtros por estado (`estado`) y restricciones de integridad para la gestión de un catálogo de cine de terror.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `peliculas_terror` con validaciones de años, calificaciones y vistas.
- **dml/inserts.sql**: Inserción de 8 registros de películas emblemáticas con diversos subgéneros y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros específicos por estado, ordenamientos y agrupamientos.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
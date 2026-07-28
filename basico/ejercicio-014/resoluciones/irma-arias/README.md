# Ejercicio 014 - Fechas básicas para Saga de Ciencia Ficción

## Descripción
Módulo de datos enfocado en la administración histórica y cronológica de una saga de ciencia ficción, aplicando tipos de datos de fecha (`DATE`) y consultas analíticas con filtros temporales.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se utilizó el tipo `DATE` para gestionar con precisión la línea cronológica de lanzamientos de los distintos formatos (películas, libros, videojuegos).
* Se implementaron filtros temporales avanzados (`WHERE fecha_lanzamiento >= ...`) y ordenamientos cronológicos ascendentes.
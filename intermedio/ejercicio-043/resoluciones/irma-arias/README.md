# Ejercicio 043 - Tablas Puente para Catálogo de Películas de Miedo

## Descripción
Módulo relacional en MySQL enfocado en el uso de **Tablas Puente (Relaciones Muchos a Muchos - N:M)**, estructurando información sobre directores, películas de terror, subgéneros cinematográficos y sus múltiples asociaciones cruzadas.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional implementando la tabla puente pelicula_subgenero para resolver la relación N:M entre películas y subgéneros, integrando llaves primarias compuestas, llaves foráneas con eliminación en cascada y restricciones CHECK.
2. dml/inserts.sql - Inserción de registros relacionales coherentes que alimentan tanto las entidades principales como las conexiones en la tabla puente.
3. dql/consultas.sql - Consultas orientadas a explotar uniones múltiples (JOIN), agrupaciones estadísticas con GROUP BY, filtros de rendimiento y reportes de clasificación de películas.
## Decisiones Técnicas
- Se implementó una tabla puente (pelicula_subgenero) debido a que una película puede pertenecer a varios subgéneros de terror simultáneamente (ej. Sobrenatural y Terror Psicológico) y un subgénero categoriza a múltiples películas.
- Se establecieron restricciones CHECK para validar rangos lógicos en los años de estreno y las calificaciones de IMDb.

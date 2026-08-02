# Ejercicio 044 - Fechas Básicas para Saga de Ciencia Ficción

## Descripción
Módulo de base de datos relacional en MySQL diseñado para administrar el calendario de estrenos, estados y métricas financieras de una saga de ciencia ficción.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y restricciones.
2. dml/inserts.sql - Inserción de 8 registros base para pruebas con fechas variadas.
3. dql/consultas.sql - Consultas analíticas orientadas a rangos de fechas y reportes de negocio.

## Decisiones Técnicas
- Se utilizó el tipo de dato DATE para manejar de forma precisa las fechas de estreno.
- Se implementó una restricción CHECK para garantizar que la recaudación no posea valores negativos.

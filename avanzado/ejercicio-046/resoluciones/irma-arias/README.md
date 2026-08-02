# Ejercicio 046 - Crear Tabla para Restaurante de Comida Urbana

## Descripción
Módulo de base de datos relacional en MySQL diseñado para administrar el catálogo, precios, calificaciones y estados de los productos de un restaurante de comida urbana.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos, tablas y restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para el menú.
3. dql/consultas.sql - Consultas analíticas y reportes de negocio orientados a categorías, precios y calificaciones.

## Decisiones Técnicas
- Se implementó una restricción CHECK en el precio y la calificación para garantizar datos lógicos.
- Se utilizó un campo ENUM para gestionar de forma estricta la disponibilidad de cada plato.

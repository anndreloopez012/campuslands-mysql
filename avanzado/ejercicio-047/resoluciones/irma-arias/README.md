# Ejercicio 047 - Tipos de Datos para Tienda de Ropa

## Descripción
Módulo relacional en MySQL optimizado para la gestión de inventario, control de tallas, precios y estados financieros en una tienda de ropa.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos, tablas y tipos de datos estrictos (ENUM, DECIMAL, INT).
2. dml/inserts.sql - Inserción de 8 registros base variados para pruebas de stock y precios.
3. dql/consultas.sql - Consultas analíticas, reportes de inventario y métricas de negocio.

## Decisiones Técnicas
- Se utilizó DECIMAL(8,2) para garantizar precisión exacta en los precios de las prendas.
- Se implementó un tipo ENUM para acotar de forma estricta las tallas permitidas y los estados del producto.

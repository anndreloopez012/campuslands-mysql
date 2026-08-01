# Módulo de Datos - Tienda de Ropa (Ejercicio 017 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la selección adecuada de tipos de datos (`DECIMAL`, `ENUM`, `DATE`, `INT`, `VARCHAR`) y restricciones de integridad para la gestión eficiente de un inventario de ropa.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `inventario_ropa` con tipos de datos estrictos y validaciones de stock y precios.
- **dml/inserts.sql**: Inserción de 8 registros de artículos textiles variados con metadatos de tallas, precios, stock y fechas de ingreso.
- **dql/consultas.sql**: 5 consultas analíticas evaluando valoraciones de inventario, filtros por estado, stock agrupado por categorías y rankings.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
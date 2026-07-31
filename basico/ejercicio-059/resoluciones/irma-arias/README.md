# Módulo de Datos - Mercado de Accesorios (Ejercicio 059)

Solución desarrollada en **MySQL** enfocada en el **manejo de fechas básicas** (`DATE`, `YEAR`, `MIN`, rangos temporales), restricciones de validación numérica (`CHECK`) y consultas analíticas orientadas al inventario temporal.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_mercado_accesorios` y la tabla `accesorios_mercado` con tipos de datos estructurados, validaciones para precios y stocks, y campos de fecha.
- **dml/inserts.sql**: Inserción de 8 registros detallados de accesorios con diversas categorías, precios, estados y fechas de ingreso distribuidas en el tiempo.
- **dql/consultas.sql**: 5 consultas analíticas aplicando funciones de fecha de MySQL (`YEAR`, rangos `BETWEEN`, `MIN`), ordenamientos cronológicos y funciones de agregación.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
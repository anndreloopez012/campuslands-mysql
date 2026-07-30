# Módulo de Datos - Mercado de Accesorios (Ejercicio 029)

Solución desarrollada en **MySQL** aplicando modelado profesional de bases de datos para un entorno de mercado de accesorios con énfasis en el manejo de fechas y filtros de inventario.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_mercado_accesorios` y la tabla `accesorios` con validaciones de restricciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de accesorios con diversas categorías, precios, stock y fechas de ingreso distribuidas entre 2025 y 2026.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio (filtrado por rangos de fechas, funciones de agregación `AVG`, `SUM`, `COUNT`, ordenamientos y `LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor de base de datos MySQL en el orden estricto de capas:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
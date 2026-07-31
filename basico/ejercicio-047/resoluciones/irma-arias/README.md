# Módulo de Datos - Tienda de Ropa (Ejercicio 047)

Solución desarrollada en **MySQL** enfocada en el uso riguroso de **tipos de datos** (`DECIMAL` para montos monetarios, `INT` para existencias, `ENUM` para tallas y estados, y `DATE` para control temporal), junto a restricciones de validación `CHECK`.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_tienda_ropa` y la tabla `prendas_tienda` con tipos de datos precisos y validaciones de integridad.
- **dml/inserts.sql**: Inserción de 8 registros de indumentaria con precios, existencias, fechas y categorías variadas.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros lógicos, cálculos de valor de inventario (`precio * stock`), funciones de agregación (`SUM`, `AVG`, `COUNT`), agrupaciones y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
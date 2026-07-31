# Módulo de Datos - Paracaidismo (Ejercicio 049)

Solución desarrollada en **MySQL** enfocada en la práctica de sentencias de inserción (`INSERT`), restricciones de validación numérica (`CHECK`), control de estados con `ENUM` y consultas analíticas de negocio.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_paracaidismo` y la tabla `saltos_paracaidismo` con tipos de datos estructurados y validaciones de rangos físicos.
- **dml/inserts.sql**: Inserción detallada de 8 registros realistas de saltos en paracaídas con diversos tipos, alturas, duraciones y costos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros por estado, funciones de agregación (`COUNT`, `AVG`, `MAX`, `SUM`), agrupaciones y límites de ranking.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
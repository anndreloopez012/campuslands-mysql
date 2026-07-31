# Módulo de Datos - Academia Tech (Ejercicio 058)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de **filtros por estado** (`WHERE estado = ...` / `IN (...)`), restricciones de validación numérica (`CHECK`), control de estados operativos con `ENUM` y reportes analíticos agrupados.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_academia_tech` y la tabla `cursos_academia` con tipos de datos estructurados y validaciones para horas de duración y cupos disponibles.
- **dml/inserts.sql**: Inserción de 8 registros detallados de cursos técnicos con diversas tecnologías, duraciones y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros avanzados por estado, funciones de agregación (`COUNT`, `SUM`, `AVG`), agrupaciones y ordenamientos.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
# Módulo de Datos - Torneo Esports MOBA (Ejercicio 031 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la creación estructurada de tablas (`CREATE TABLE`), restricciones de integridad robustas (`CHECK`) y consultas analíticas para un torneo de deportes electrónicos MOBA.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `equipos_moba` con tipos de datos precisos y validaciones estrictas para victorias, derrotas y premios mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de equipos profesionales de esports distribuidos en regiones competitivas globales.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en filtrados por estado operativo, ordenamientos por rendimiento, agrupamientos por región y rankings de premios monetarios.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
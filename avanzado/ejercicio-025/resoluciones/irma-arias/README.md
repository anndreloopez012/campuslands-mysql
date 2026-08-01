# Módulo de Datos - Laboratorio de Fórmulas Químicas (Ejercicio 025 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el uso profesional de las funciones de agregación `COUNT` y `SUM`, combinadas con agrupamientos (`GROUP BY`), filtros avanzados y restricciones de integridad para un laboratorio químico.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `formulas_quimicas` con validaciones estrictas para conteo de átomos y volúmenes mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de compuestos químicos variados con clasificaciones, conteos atómicos, volúmenes y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en la aplicación de `COUNT` y `SUM` tanto de forma global como agrupada por categorías y estados.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
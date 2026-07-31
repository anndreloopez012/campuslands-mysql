# Módulo de Datos - Laboratorio de Fórmulas Químicas (Ejercicio 055)

Solución desarrollada en **MySQL** enfocada en el dominio y práctica avanzada de las funciones de agregación **`COUNT`** y **`SUM`**, acompañadas de agrupamientos por categorías y estados, restricciones de validación numérica (`CHECK`) y reportes analíticos precisos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_laboratorio_quimico` y la tabla `formulas_quimicas` con tipos de datos estructurados y validaciones de rangos físicos y monetarios.
- **dml/inserts.sql**: Inserción detallada de 8 registros realistas de compuestos químicos con diversas categorías, fórmulas moleculares, cantidades en gramos, costos y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en el uso intensivo de `COUNT` y `SUM`, aplicando filtros condicionales (`WHERE`) y agrupaciones analíticas (`GROUP BY`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
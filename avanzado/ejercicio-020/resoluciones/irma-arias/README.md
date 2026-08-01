# Módulo de Datos - Estudio de Tatuajes (Ejercicio 020 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de consultas de selección (`SELECT`), filtros avanzados, funciones de agregación y restricciones de integridad para la gestión de un estudio de tatuajes.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `citas_tatuajes` con validaciones de horas y precios mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de citas con diversos estilos artísticos, estimaciones de tiempo, costos y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas utilizando `SELECT`, filtros por estado, ordenamientos y agrupamientos por estilo.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
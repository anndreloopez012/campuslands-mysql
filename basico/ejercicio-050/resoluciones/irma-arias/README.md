# Módulo de Datos - Estudio de Tatuajes (Ejercicio 050)

Solución desarrollada en **MySQL** enfocada en la práctica avanzada de consultas con **`SELECT`**, restricciones de validación numérica (`CHECK`), control de estados con `ENUM` y reportes financieros agrupados.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_estudio_tatuajes` y la tabla `tatuajes_estudio` con tipos de datos estructurados y validaciones de rangos físicos.
- **dml/inserts.sql**: Inserción detallada de 8 registros realistas de trabajos en el estudio de tatuajes con diversos estilos, tamaños, costos y tiempos estimados.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros lógicos, funciones de agregación (`COUNT`, `AVG`, `MAX`, `SUM`), agrupaciones y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
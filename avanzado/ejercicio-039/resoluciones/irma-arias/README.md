# Módulo de Datos - Kickboxing (Ejercicio 039 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de la eliminación controlada de registros (`DELETE`), restricciones estrictas (`CHECK`, `UNIQUE`) y consultas analíticas para una academia de kickboxing.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `peleadores_kickboxing` con validaciones robustas para estadísticas de combates.
- **dml/inserts.sql**: Inserción de 8 registros iniciales y aplicación de sentencias `DELETE` controladas mediante filtros de estado e historial deportivo.
- **dql/consultas.sql**: 5 consultas analíticas aplicando ordenamientos múltiples (`ORDER BY`), filtrados por estado activo, funciones de agregación y límites de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
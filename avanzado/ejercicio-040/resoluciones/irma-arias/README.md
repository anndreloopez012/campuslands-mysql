
# Módulo de Datos - Carreras Urbanas (Ejercicio 040 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de las funciones de agregación estadísticas y financieras (`COUNT` y `SUM`), restricciones estrictas (`CHECK`, `UNIQUE`) y reportes analíticos para la gestión de eventos de carreras urbanas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `carreras_urbanas` asegurando validaciones de integridad para distancias, inscripciones y recaudaciones.
- **dml/inserts.sql**: Inserción de 8 registros de carreras urbanas con especificaciones técnicas detalladas y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando `COUNT`, `SUM`, agrupamientos por categoría (`GROUP BY`), filtros avanzados con `WHERE` y límites de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
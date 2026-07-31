# Módulo de Datos - Torneo de Ping Pong (Ejercicio 041)

Solución desarrollada en **MySQL** aplicando validaciones simples con restricciones `CHECK` avanzadas, tipos de datos estrictos y consultas analíticas de rendimiento para competiciones de tenis de mesa.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_pingpong_torneo` y la tabla `jugadores_pingpong` con validaciones robustas de integridad numérica (`CHECK`).
- **dml/inserts.sql**: Inserción de 8 registros de jugadores profesionales y aficionados con historiales de partidos y puntajes de ranking coherentes.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en rankings, promedios por categoría, filtros avanzados de rendimiento y resúmenes de estado.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
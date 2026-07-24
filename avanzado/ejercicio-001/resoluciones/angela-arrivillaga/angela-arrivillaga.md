# Resolución Ejercicio 001 - Avanzado

## Descripción
Solución al ejercicio 001 sobre un torneo de eSports MOBA. En este ejercicio practico el uso de transacciones en MySQL (`START TRANSACTION`, `COMMIT` y `ROLLBACK`) para garantizar que la transferencia de puntos entre equipos se ejecute de forma segura.

## Estructura de archivos
* `ddl/schema.sql`: Creación de las tablas `equipos` y `transferencias_puntos` usando el motor `InnoDB`.
* `dml/inserts.sql`: Carga de equipos e implementación de bloques de transacciones con `COMMIT` y `ROLLBACK`.
* `dql/consultas.sql`: 5 consultas para revisar los saldos de puntos e historial de transferencias.

## Pasos para ejecutar
1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.
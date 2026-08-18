# Ejercicio 009 - Bloqueos

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se creó la tabla `peleadores` con datos suficientes para simular operaciones concurrentes.
- Se utilizaron transacciones (`START TRANSACTION` y `COMMIT`) para demostrar el manejo de bloqueos.
- Se implementó `SELECT ... FOR SHARE` para bloqueos de lectura.
- Se implementó `SELECT ... FOR UPDATE` para bloqueos exclusivos durante una actualización.
- Se añadieron restricciones `PRIMARY KEY`, `NOT NULL`, `DEFAULT`, `ENUM` y `CHECK`.
- Las consultas permiten observar el comportamiento de los bloqueos y consultar información del torneo.
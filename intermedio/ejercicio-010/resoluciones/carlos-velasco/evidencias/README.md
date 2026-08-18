# Ejercicio 010 - UNIQUE

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se creó la tabla `corredores` para almacenar la información de los participantes.
- Se aplicaron restricciones `UNIQUE` sobre los campos `dorsal`, `dpi` y `correo` para evitar registros duplicados.
- Se utilizaron restricciones `PRIMARY KEY`, `NOT NULL`, `DEFAULT`, `ENUM`, `CHECK` y `UNIQUE`.
- Se insertaron ocho registros con datos realistas y valores únicos.
- Se agregaron consultas para validar la información y verificar la existencia de los índices generados por las restricciones `UNIQUE`.
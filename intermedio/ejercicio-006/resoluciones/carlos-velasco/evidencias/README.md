# Ejercicio 006 - Normalización 1FN para autos hiperdeportivos

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se aplicó la Primera Forma Normal (1FN) separando la información de fabricantes y automóviles.
- La tabla `fabricantes` almacena datos únicos de cada fabricante.
- La tabla `autos` almacena únicamente la información propia de cada vehículo y se relaciona mediante una clave foránea.
- Se implementaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT` y `CHECK`.
- Se insertaron ocho fabricantes y ocho autos hiperdeportivos con datos realistas.
- Las consultas permiten validar la relación entre tablas y comprobar la correcta aplicación de la 1FN.
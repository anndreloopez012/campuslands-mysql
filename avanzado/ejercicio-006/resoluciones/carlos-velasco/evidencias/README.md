# Ejercicio 006 - EXPLAIN para autos hiperdeportivos

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se implementó un modelo relacional con las tablas `fabricantes` y `autos`.
- Se agregaron índices sobre las columnas `estado`, `potencia_hp` y `fabricante_id` para optimizar consultas frecuentes.
- Se utilizaron consultas con `EXPLAIN` para analizar el plan de ejecución generado por MySQL.
- Se implementaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
- Se insertaron ocho fabricantes y ocho autos hiperdeportivos con información realista.
- La última consulta permite comprobar que los datos fueron almacenados correctamente después del análisis con `EXPLAIN`.
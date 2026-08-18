# Ejercicio 009 - FOREIGN KEY

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se creó un modelo relacional compuesto por las tablas `categorias`, `peleadores` y `peleas`.
- Se implementaron dos claves foráneas (`FOREIGN KEY`) para mantener la integridad referencial.
- Cada peleador pertenece a una categoría y cada pelea pertenece a un peleador.
- Se utilizaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
- Se insertaron ocho registros útiles para validar las relaciones.
- Las consultas utilizan `INNER JOIN` y funciones de agregación para comprobar el correcto funcionamiento de las claves foráneas.
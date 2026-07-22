# Ejercicio 005 - Índices para taller mecánico de motos

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se creó la tabla `motos` para almacenar información de los vehículos.
- Se creó la tabla `ordenes_servicio` para registrar mantenimientos y reparaciones.
- Se implementó una relación mediante clave foránea entre motos y órdenes.
- Se agregaron índices en columnas utilizadas frecuentemente para búsquedas y filtros.
- Los índices creados permiten optimizar consultas por marca, estado, fechas, mecánicos y relaciones entre tablas.
- Se utilizó `EXPLAIN` para analizar el comportamiento del optimizador de MySQL.
- Se aplicaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
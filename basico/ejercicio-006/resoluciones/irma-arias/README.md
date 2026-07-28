# Ejercicio 006 - DÓNDE para autos hiperdeportivos

## Descripción
Módulo de datos enfocado en la gestión e inventario de automóviles hiperdeportivos, aplicando filtros avanzados con la cláusula `WHERE`.

## Orden de Ejecución
Ejecuta los scripts en tu gestor MySQL en el siguiente orden:
1. `ddl/schema.sql` (Crea la base de datos y la tabla `autos` con restricciones).
2. `dml/inserts.sql` (Inserta los 8 registros base con casos diversos).
3. `dql/consultas.sql` (Ejecuta los reportes y filtros solicitados).

## Decisiones Técnicas
* Se utilizó un campo `estado` restringido para practicar filtrados estrictos de inventario.
* Se usó `DECIMAL(5,2)` y `DECIMAL(6,2)` para garantizar precisión numérica en velocidades y precios.
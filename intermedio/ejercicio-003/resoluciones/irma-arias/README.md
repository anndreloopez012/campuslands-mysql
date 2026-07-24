# Ejercicio 003 - GROUP BY para inventario de skins shooter

## Descripción
Módulo intermedio diseñado para practicar el uso de la cláusula `GROUP BY` y funciones de agregación (`COUNT`, `AVG`, `SUM`, `MAX`) en MySQL aplicado a la gestión y análisis de un inventario de skins shooter.

## Decisiones Técnicas
- **Estructura:** Tabla única optimizada con restricciones `ENUM` para rareza y estados, asegurando integridad en las agrupaciones.
- **Validaciones:** Restricción `CHECK` para garantizar precios válidos y no negativos.

## Orden de Ejecución
1. `ddl/schema.sql` (Creación de la base de datos y tablas)
2. `dml/inserts.sql` (Inserción de registros útiles)
3. `dql/consultas.sql` (Ejecución de reportes analíticos con `GROUP BY`)
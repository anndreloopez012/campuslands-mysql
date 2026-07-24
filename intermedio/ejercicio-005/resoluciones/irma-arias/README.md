# Ejercicio 005 - Subconsultas para taller mecánico de motos

## Descripción
Módulo intermedio diseñado para practicar el uso de **Subconsultas (Subqueries)** en MySQL aplicado a la gestión de un taller mecánico de motocicletas, permitiendo realizar comparaciones dinámicas, filtros avanzados y cálculos escalares.

## Decisiones Técnicas
- **Estructura:** Tabla transaccional única optimizada con restricciones `CHECK` para garantizar la validez financiera de los costos.
- **Enfoque:** Implementación de subconsultas escalares, anidadas con operadores relacionales (`>`) y listas de valores (`IN`), además de columnas calculadas.

## Orden de Ejecución
1. `ddl/schema.sql` (Creación de la base de datos y tablas)
2. `dml/inserts.sql` (Inserción de registros útiles de prueba)
3. `dql/consultas.sql` (Ejecución de reportes analíticos con subconsultas)
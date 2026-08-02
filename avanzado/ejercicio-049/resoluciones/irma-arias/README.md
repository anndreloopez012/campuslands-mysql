# Ejercicio 049 - INSERT en Paracaidismo

## Descripción
Módulo relacional en MySQL optimizado para la inserción masiva y control analítico de registros de saltos, modalidades, costos y calificaciones en una escuela de paracaidismo.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones avanzadas (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros base variados para probar operaciones de inserción y filtros.
3. dql/consultas.sql - Consultas analíticas orientadas a modalidades, costos y reportes de rendimiento.

## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que la altura mínima de los saltos sea de al menos 3000 pies y los costos positivos.
- Se utilizó un campo ENUM para manejar de forma estricta los estados del proceso de salto.

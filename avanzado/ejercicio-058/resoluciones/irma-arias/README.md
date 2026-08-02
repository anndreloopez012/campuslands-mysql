# Ejercicio 058 - Filtros por Estado para Academia Tech

## Descripción
Módulo relacional en MySQL optimizado para la aplicación sistemática de filtros por estado, segmentación de catálogos educativos y reportes analíticos en una academia tecnológica.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar el comportamiento de los filtros según el estado del curso.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores clave mediante condiciones de estado y agregaciones.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que la duración en semanas y el costo en USD mantengan valores numéricos positivos lógicos.
- Se utilizó un campo ENUM para controlar de forma estricta los estados operativos de los cursos (activo, pausado, finalizado).

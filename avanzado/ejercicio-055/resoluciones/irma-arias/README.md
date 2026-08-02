# Ejercicio 055 - COUNT y SUM para Laboratorio de Fórmulas Químicas

## Descripción
Módulo relacional en MySQL optimizado para la aplicación avanzada de funciones de agregación (COUNT y SUM), reportes financieros de producción y control de inventario en un laboratorio de química.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar conteos y sumatorias matemáticas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores clave de negocio mediante COUNT y SUM.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para asegurar que la cantidad de átomos, los costos en USD y los porcentajes de pureza mantengan valores válidos.
- Se utilizó un campo ENUM para clasificar de manera estricta el estado operativo de cada compuesto químico.

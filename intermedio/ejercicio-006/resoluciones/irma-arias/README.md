# Ejercicio 006 - Normalización 1FN para Autos Hiperdeportivos

## Descripción
Módulo relacional en MySQL diseñado bajo los principios de la Primera Forma Normal (1FN), garantizando que todos los atributos sean atómicos, sin grupos repetitivos, e incorporando validaciones estrictas y reportes analíticos para el mercado de autos hiperdeportivos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y la tabla estructurada en 1FN con restricciones (CHECK, ENUM, NOT NULL).
2. dml/inserts.sql - Inserción de 8 registros normalizados con datos técnicos y comerciales realistas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores corporativos mediante filtros avanzados y agregaciones.
## Decisiones Técnicas
- Se garantizó la atomicidad de los datos separando marcas, modelos y especificaciones técnicas en columnas independientes.
- Se implementaron restricciones CHECK para evitar valores negativos en precios, potencias y velocidades máximas.

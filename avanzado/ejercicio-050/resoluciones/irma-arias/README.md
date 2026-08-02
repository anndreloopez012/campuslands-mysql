# Ejercicio 050 - SELECT para Estudio de Tatuajes

## Descripción
Módulo relacional en MySQL optimizado para la ejecución de consultas avanzadas (SELECT), reportes de ingresos, filtrado por estilos y control de citas en un estudio de tatuajes profesional.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar el comportamiento de las consultas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de negocio, rankings y agregaciones.

## Decisiones Técnicas
- Se implementaron restricciones CHECK para asegurar que tanto los costos en USD como las horas estimadas mantengan valores positivos válidos.
- Se utilizó un campo ENUM para clasificar de forma estricta los estados de cada cita registrada.

# Ejercicio 053 - ACTUALIZACIÓN para Arquitectura 3D

## Descripción
Módulo relacional en MySQL optimizado para practicar operaciones de modificación de datos (UPDATE), control de estados, revaluación de costos y reportes analíticos en proyectos de arquitectura 3D.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros base y ejecución de sentencias UPDATE para actualizar estados y valores financieros.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de negocio sobre los datos modificados.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que el área en metros cuadrados y el costo en USD mantengan valores numéricos positivos lógicos.
- Se utilizó un campo ENUM para reflejar con precisión el flujo de trabajo de los proyectos (en proceso, en revisión y completados).

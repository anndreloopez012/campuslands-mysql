# Ejercicio 051 - WHERE para Dibujo Digital

## Descripción
Módulo relacional en MySQL optimizado para la aplicación avanzada de filtros condicionales (WHERE), reportes analíticos y control de estados en proyectos de dibujo digital.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar operadores lógicos y de filtrado.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores mediante la cláusula WHERE.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para asegurar que las horas de trabajo y los precios de comisión mantengan valores positivos lógicos.
- Se utilizó un campo ENUM para clasificar de forma estricta el estado operativo de cada obra.

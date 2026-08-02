# Ejercicio 052 - ORDER BY para Animación 3D

## Descripción
Módulo relacional en MySQL optimizado para la aplicación de ordenamientos avanzados (ORDER BY), reportes analíticos y control de renderizado en proyectos de animación 3D.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar criterios de ordenamiento ascendente y descendente.
3. dql/consultas.sql - Consultas analíticas orientadas a rankings, costos, tiempos de render y agregaciones ordenadas.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que el tiempo de render y el presupuesto mantengan valores numéricos positivos lógicos.
- Se utilizó un campo ENUM para clasificar de forma estricta el estado del proyecto de animación.

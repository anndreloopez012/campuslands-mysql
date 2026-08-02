# Ejercicio 057 - Modelado de Entidad para Videojuego de Acción y Aventura

## Descripción
Módulo relacional en MySQL optimizado para el modelado estructurado de entidades, diseño de tablas, aplicación de restricciones e indicadores analíticos en un videojuego de acción y aventura.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros base para modelar misiones, regiones y recompensas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de negocio sobre las entidades modeladas.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que el nivel de dificultad esté entre 1 y 10, y que las recompensas u honor mantengan valores numéricos válidos positivos.
- Se utilizó un campo ENUM para gestionar de forma estricta el estado del ciclo de vida de cada misión.

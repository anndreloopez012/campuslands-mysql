# Ejercicio 056 - Validaciones Simples para Videojuego RPG

## Descripción
Módulo relacional en MySQL optimizado para la aplicación de validaciones estrictas y restricciones de integridad (CHECK, DEFAULT, ENUM, NOT NULL), reportes analíticos y control de atributos en personajes de un videojuego RPG.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para validar rangos de nivel, experiencia, vida y oro.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de juego mediante filtros y funciones de agregación.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para asegurar que el nivel esté entre 1 y 100, la experiencia y el oro no sean negativos, y los puntos de vida sean estrictamente mayores a cero.
- Se utilizó un campo ENUM para gestionar de manera controlada el estado operativo de cada personaje.

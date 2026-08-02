# Ejercicio 045 - Carga de Datos para Biblioteca Gamer

## Descripción
Módulo relacional en MySQL enfocado en la **Carga Estructurada de Datos y Consultas de Informes**, estructurando información sobre plataformas de juego, desarrolladores de videojuegos, catálogos, inversiones en USD, horas jugadas, calificaciones de Metacritic y estados de biblioteca.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, llaves foráneas con eliminación en cascada, restricciones CHECK para precios, años, calificaciones y horas, junto con campos ENUM para estados de la biblioteca.
2. dml/inserts.sql - Carga masiva de datos limpios, consistentes y realistas que permiten alimentar informes estadísticos robustos.
3. dql/consultas.sql - Consultas orientadas a explotar uniones múltiples (JOIN), funciones de agregación (SUM, AVG, MAX, COUNT), redondeos y reportes de clasificación de videojuegos (LIMIT).
## Decisiones Técnicas
- Se estructuró un modelo relacional 1:N entre plataformas y videojuegos, así como entre desarrolladores y videojuegos, permitiendo un control analítico completo de los recursos gamer.
- Se utilizaron tipos de datos monetarios con precisión decimal (DECIMAL(6,2)) para el registro exacto de precios y costos.

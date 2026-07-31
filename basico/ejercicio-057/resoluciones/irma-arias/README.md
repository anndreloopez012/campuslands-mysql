# Módulo de Datos - Videojuego de Acción y Aventura (Ejercicio 057)

Solución desarrollada en **MySQL** enfocada en el **modelado de entidades** profesionales, aplicación de restricciones de integridad numérica (`CHECK`), control de estados con `ENUM` y consultas analíticas orientadas a la progresión del jugador.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_videojuego_accion` y la tabla `misiones_aventura` con tipos de datos estructurados y validaciones para niveles de dificultad (1 a 10) y recompensas monetarias.
- **dml/inserts.sql**: Inserción de 8 registros detallados de misiones, expediciones y misiones principales distribuidas en diferentes regiones del mapa del juego.
- **dql/consultas.sql**: 5 consultas analíticas aplicando ordenamientos con `ORDER BY`, agrupaciones por región, filtros condicionales y funciones de agregación (`COUNT`, `AVG`, `MAX`, `SUM`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
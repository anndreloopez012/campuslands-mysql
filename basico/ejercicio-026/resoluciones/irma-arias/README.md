# Módulo de Datos RPG - Ejercicio 026

Solución desarrollada en **MySQL** aplicando criterios profesionales de diseño de bases de datos para un entorno de videojuego RPG.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_rpg_campus` y la tabla `personajes` con restricciones de validación (`CHECK`).
- **dml/inserts.sql**: Inserción de 8 registros de prueba variados para cubrir diferentes clases, niveles y estados.
- **dql/consultas.sql**: 5 consultas analíticas que incluyen filtros, funciones de agregación (`AVG`, `COUNT`), agrupamientos (`GROUP BY`), ordenamientos y límites (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor de MySQL respetando el orden por capas:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
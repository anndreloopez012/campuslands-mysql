# Módulo de Datos - Videojuego RPG (Ejercicio 056)

Solución desarrollada en **MySQL** enfocada en la implementación de **validaciones simples** mediante restricciones numéricas (`CHECK`), control de estados con `ENUM`, unicidad en identificadores y consultas analíticas de verificación.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_videojuego_rpg` y la tabla `personajes_rpg` con tipos de datos estructurados y validaciones de rangos para niveles, vida y experiencia.
- **dml/inserts.sql**: Inserción de 8 registros iniciales de héroes y personajes con diversas clases, niveles, estadísticas y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando rankings con `ORDER BY`, filtros condicionales por estado y nivel, y funciones de agregación agrupadas (`GROUP BY`, `COUNT`, `AVG`, `MAX`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
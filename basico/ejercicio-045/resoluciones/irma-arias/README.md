# Módulo de Datos - Biblioteca Gamer (Ejercicio 045)

Solución desarrollada en **MySQL** orientada a la práctica de **relaciones simples** (modelo relacional 1 a N entre tablas), restricciones de integridad referencial (`FOREIGN KEY`), validaciones numéricas y consultas analíticas con `JOIN`.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_biblioteca_gamer` junto a las tablas `plataformas` y `videojuegos` vinculadas por llave foránea.
- **dml/inserts.sql**: Inserción de registros relacionales coherentes con plataformas de hardware y títulos de videojuegos con diversos estados y horas de juego.
- **dql/consultas.sql**: 5 consultas analíticas aplicando `INNER JOIN`, `LEFT JOIN`, agrupaciones estadísticas (`GROUP BY`, `SUM`, `AVG`) y filtros relacionales.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
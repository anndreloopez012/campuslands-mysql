# Módulo de Datos - Ranking Battle Royale (Ejercicio 032 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la correcta aplicación de tipos de datos (`INT`, `VARCHAR`, `DECIMAL`, `DATE`, `ENUM`), restricciones estrictas (`CHECK`) y consultas analíticas para un sistema de clasificación battle royale.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `jugadores_battle_royale` utilizando tipos de datos precisos para puntos, niveles y fechas, con validaciones robustas.
- **dml/inserts.sql**: Inserción de 8 registros de jugadores con perfiles variados, niveles de experiencia, puntajes de ranking y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en filtrados por estado, ordenamientos cuantitativos, agrupamientos por categoría y rankings de rendimiento (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
# Módulo de Datos - Playlist Musical (Ejercicio 042)

Solución desarrollada en **MySQL** aplicando modelado profesional de entidades, restricciones de validación numérica (`CHECK`) y consultas analíticas para una lista de reproducción digital.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_playlist_musical` y la tabla `canciones_playlist` con tipos de datos estructurados y validaciones.
- **dml/inserts.sql**: Inserción de 8 registros de canciones con diversos géneros musicales, duraciones, conteo de reproducciones y estados.
- **dql/consultas.sql**: 5 consultas analíticas utilizando filtros lógicos, agrupaciones (`GROUP BY`), funciones de agregación (`AVG`, `SUM`, `COUNT`), ordenamientos y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
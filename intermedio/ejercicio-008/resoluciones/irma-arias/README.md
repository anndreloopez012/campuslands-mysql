# Ejercicio 008 - Normalización 3FN para Fútbol Sala

## Descripción
Módulo relacional en MySQL optimizado bajo los principios de la Tercera Forma Normal (3FN), eliminando dependencias transitivas mediante la estructuración de tres entidades relacionales independientes (sedes_sala, equipos_sala y jugadores_sala) orientadas a la gestión de torneos de fútbol sala.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional en 3FN con claves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para sedes, equipos y jugadores.
3. dql/consultas.sql - Consultas analíticas avanzadas utilizando múltiples JOIN y funciones de agregación.
## Decisiones Técnicas
- Se separaron las sedes y ciudades en una tabla independiente (sedes_sala) para evitar dependencias transitivas respecto a los equipos, cumpliendo estrictamente con la 3FN.
- Se implementaron restricciones de integridad referencial con FOREIGN KEY y control de dorsales mediante CHECK.

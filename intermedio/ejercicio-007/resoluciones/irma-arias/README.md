# Ejercicio 007 - Normalización 2FN para Liga de Fútbol

## Descripción
Módulo relacional en MySQL optimizado bajo los principios de la Segunda Forma Normal (2FN), asegurando la eliminación de dependencias parciales mediante la separación de entidades relacionales (equipos_liga y jugadores_liga) y la integración de reportes analíticos para una liga de fútbol profesional.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional en 2FN con llaves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para equipos y futbolistas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores deportivos mediante JOIN y funciones de agregación.
## Decisiones Técnicas
- Se separaron los datos descriptivos de los equipos de los datos específicos de los jugadores para evitar redundancias y cumplir estrictamente con la 2FN.
- Se implementaron restricciones de integridad referencial con FOREIGN KEY y eliminación en cascada.

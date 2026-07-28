# Ejercicio 012 - Modelado de entidad para Playlist Musical

## Descripción
Módulo de datos diseñado para la gestión y modelado de una lista de reproducción musical, aplicando restricciones de validación (`CHECK`), tipos de datos precisos (`DECIMAL`) y consultas analíticas de ranking.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la entidad `canciones` controlando los géneros musicales y estados mediante restricciones `CHECK`.
* Se implementaron consultas de agregación y filtros por rangos de duración y volumen de reproducciones.
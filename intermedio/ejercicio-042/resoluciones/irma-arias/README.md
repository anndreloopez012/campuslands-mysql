# Ejercicio 042 - Consultas de Informes para Playlist Musical

## Descripción
Módulo relacional en MySQL enfocado en el desarrollo de **Consultas de Informes y Reportes Analíticos**, estructurando información sobre artistas, listas de reproducción (playlists), canciones, géneros musicales, conteos de reproducciones y duraciones en segundos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, llaves foráneas con eliminación en cascada, restricciones CHECK para duraciones y campos ENUM para géneros y estados.
2. dml/inserts.sql - Inserción de registros relacionales coherentes y limpios que permiten alimentar informes estadísticos robustos.
3. dql/consultas.sql - Consultas orientadas a generar reportes profesionales utilizando uniones múltiples (JOIN), funciones de agregación (SUM, AVG, MAX, COUNT), redondeos y clasificaciones de ranking (LIMIT).
## Decisiones Técnicas
- Se estructuró un modelo relacional 1:N entre artistas y canciones, así como entre playlists y canciones, facilitando la extracción de métricas de rendimiento por categoría y autor.
- Se diseñaron informes con alias claros y explícitos para asegurar la legibilidad por parte de otros desarrolladores.

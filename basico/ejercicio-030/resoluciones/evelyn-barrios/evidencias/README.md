# Solución Ejercicio 030 - Equipo de Streaming

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar el inventario de equipo de varios streamers. El objetivo era practicar el uso de relaciones simples.

Se crearon dos tablas: `streamers` y `equipos`. La tabla `equipos` contiene una clave foránea (`streamer_id`) que apunta al `id` de la tabla `streamers`. Esta relación uno-a-muchos permite asociar múltiples piezas de equipo a un solo streamer, evitando la repetición de datos y manteniendo la integridad referencial.

## Objetivo Cumplido

El objetivo de practicar relaciones simples se ha cumplido. Las consultas en `dql/consultas.sql` utilizan `JOIN` para combinar información de ambas tablas, permitiendo generar reportes complejos como el valor total del inventario por streamer o listar el equipo de una persona específica. Esto demuestra el poder de un modelo de datos relacional.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `streaming_setup` y las tablas `streamers` y `equipos`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar las tablas con datos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes que combinan la información de ambas tablas.
# Solución Ejercicio 002 - LEFT JOIN

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar un ranking de jugadores de un battle royale. El objetivo principal era practicar el uso de `LEFT JOIN`.

Se crearon dos tablas: `jugadores` y `partidas`. La tabla `partidas` está relacionada con `jugadores` mediante una clave foránea. La clave para demostrar `LEFT JOIN` es que en la tabla `jugadores` existen registros que no tienen correspondencia en la tabla `partidas` (jugadores nuevos que no han jugado).

## Objetivo Cumplido

El objetivo de practicar `LEFT JOIN` se ha cumplido. Las consultas en `dql/consultas.sql` demuestran cómo `LEFT JOIN` permite crear reportes completos que incluyen a todos los jugadores, independientemente de si han jugado partidas o no. Esto es útil para rankings y estadísticas donde se necesita mostrar a toda la base de jugadores. Se incluye una consulta con `INNER JOIN` a modo de comparación para resaltar la diferencia.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `br_ranking_intermediate` y las tablas `jugadores` y `partidas`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar las tablas con datos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes reportes que demuestran el uso de `LEFT JOIN`.

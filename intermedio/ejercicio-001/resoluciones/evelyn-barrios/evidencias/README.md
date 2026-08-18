# Solución Ejercicio 001 - INNER JOIN

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos relacional para gestionar equipos y jugadores de un torneo de esports MOBA. El objetivo principal era practicar el uso de `INNER JOIN`.

Se crearon dos tablas: `equipos` y `jugadores`. La tabla `jugadores` contiene una clave foránea (`equipo_id`) que se conecta con la clave primaria de la tabla `equipos`. Esta relación uno-a-muchos es la base para poder combinar la información de ambas tablas de manera eficiente.

## Objetivo Cumplido

El objetivo de practicar `INNER JOIN` se ha cumplido. Las consultas en `dql/consultas.sql` demuestran cómo combinar datos de las tablas `jugadores` y `equipos` para generar reportes que serían imposibles de obtener con una sola tabla. Se utilizan alias para mayor claridad y se combinan con `GROUP BY` y `WHERE` para análisis más complejos.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `moba_tournament_intermediate` y las tablas `equipos` y `jugadores`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar las tablas con datos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes reportes que demuestran el uso de `INNER JOIN`.

# Solución Ejercicio 031 - Torneo de Esports MOBA

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos relacional para gestionar un torneo de esports MOBA. El objetivo era crear una estructura que permitiera registrar equipos y partidas de manera organizada.

Se crearon dos tablas principales: `equipos` y `partidas`. La tabla `partidas` se relaciona con `equipos` a través de claves foráneas (`equipo_rojo_id`, `equipo_azul_id`, `ganador_id`), lo que permite un modelo de datos normalizado y eficiente. Como restricción, se utilizó un campo `fase_torneo` de tipo `ENUM` para asegurar que las partidas solo pertenezcan a fases válidas del torneo.

## Objetivo Cumplido

Los scripts SQL demuestran una solución completa y funcional. Las consultas en `dql/consultas.sql` utilizan `JOIN` y funciones de agregación para generar reportes complejos y útiles, como el ranking de victorias por equipo, la duración promedio de las partidas o el historial de enfrentamientos.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `moba_tournament` y las tablas `equipos` y `partidas`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar las tablas con equipos y partidas de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes sobre el desarrollo del torneo.
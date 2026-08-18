# Solución Ejercicio 032 - Ranking Battle Royale

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar el ranking y las estadísticas de los jugadores de un videojuego tipo battle royale. La entidad principal es la tabla `ranking_jugadores`.

La selección de tipos de datos fue una decisión clave. Se utilizó `INT` para puntos y contadores, `DECIMAL(4, 2)` para el `kda_ratio` para mantener la precisión, y `ENUM` para la columna `rango`. El uso de `ENUM` funciona como una restricción que asegura la consistencia de los datos, permitiendo solo rangos válidos en el sistema.

## Objetivo Cumplido

Los scripts SQL proporcionan una solución completa que permite analizar el rendimiento de los jugadores. Las consultas en `dql/consultas.sql` demuestran cómo crear reportes útiles como una tabla de clasificación, calcular estadísticas promedio por rango y filtrar jugadores de élite basados en su rendimiento.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `battle_royale_ranking` y la tabla `ranking_jugadores`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 jugadores de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes sobre el ranking de jugadores.
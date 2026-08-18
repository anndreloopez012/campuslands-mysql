# Solución Ejercicio 007 - Liga de Fútbol

## Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la estructura de la tabla `tabla_posiciones`.
2.  **`dml/inserts.sql`**: Inserta 10 equipos de ejemplo en la tabla.
3.  **`dql/consultas.sql`**: Ejecuta 5 consultas para ordenar los datos de la liga.

## Decisiones Técnicas

1.  **Temática y Diseño**: Siguiendo el enunciado, se implementó una temática de "Liga de Fútbol". La tabla `tabla_posiciones` fue diseñada para almacenar estadísticas clave de los equipos, como `puntos`, `victorias`, `goles_favor` y `goles_contra`, que son perfectos para practicar ordenamientos.

2.  **Restricción `CHECK`**: Se añadió una restricción `CHECK (puntos >= 0)` para garantizar la integridad de los datos, ya que un equipo no puede tener un puntaje negativo.

3.  **Consultas con `ORDER BY`**: El archivo `dql/consultas.sql` se enfoca en el objetivo del ejercicio. Las consultas demuestran cómo usar `ORDER BY` para generar reportes típicos de una liga, como la tabla de posiciones general, el ranking de equipos más goleadores y la clasificación con criterios de desempate (diferencia de gol).

4.  **Tipos de Datos**: Se utilizaron tipos de datos `INT` para contadores y `VARCHAR` para los nombres de los equipos, lo cual es eficiente y adecuado para este contexto. Se añadió una restricción `UNIQUE` al `nombre_equipo` para evitar duplicados.

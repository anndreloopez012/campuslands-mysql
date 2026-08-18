# Solución Ejercicio 001 - Torneo eSports MOBA

## Autor
- Evelyn Barrios

## Descripción de la Solución

Esta solución modela una base de datos para un torneo de eSports MOBA. Se ha optado por una estructura normalizada con tres tablas (`equipos`, `jugadores`, `estadisticas_partida`) para garantizar la integridad de los datos y evitar redundancias.

### Decisiones de Diseño
1.  **Normalización**: Se separaron equipos, jugadores y estadísticas en tablas distintas para cumplir con las buenas prácticas de diseño de bases de datos. Esto facilita la gestión y escalabilidad.
2.  **Tipos de Datos**: Se usó `ENUM` para la columna `rol` y `estado` en la tabla `jugadores`, restringiendo los valores a un conjunto predefinido y mejorando la consistencia.
3.  **Restricciones**: Se añadió una restricción `CHECK` en `estadisticas_partida` para asegurar que los valores de asesinatos, muertes y asistencias no puedan ser negativos.
4.  **Consultas (DQL)**: Las consultas están diseñadas para responder preguntas de negocio específicas, como calcular el KDA, obtener rankings y generar reportes de rendimiento, utilizando `JOINs`, `GROUP BY`, `AVG` y alias para mayor claridad.

## Cómo Ejecutar

1.  **Crear Schema**: Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos y las tablas.
2.  **Insertar Datos**: Ejecuta el contenido de `dml/inserts.sql` para poblar las tablas con datos de ejemplo.
3.  **Realizar Consultas**: Ejecuta el contenido de `dql/consultas.sql` para ver los reportes y análisis.
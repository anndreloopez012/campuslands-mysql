# Resolución del Ejercicio 014 - Saga de Ciencia Ficción (Fechas Básicas)

## Temática: Saga de Ciencia Ficción

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar una saga de películas de ciencia ficción, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en el manejo de fechas.

## Objetivo

El objetivo principal fue diseñar una estructura de tabla coherente con la temática de "saga de ciencia ficción", insertar datos realistas que incluyan fechas, y luego realizar consultas que permitan obtener información útil y reportes sobre las películas, utilizando funciones y filtros de fecha.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definió la tabla `peliculas_sf` (renombrada de la plantilla original `basico_ejercicio_014` para mayor claridad y relevancia con la temática).
    *   La tabla `peliculas_sf` incluye campos como `id`, `titulo`, `director`, `fecha_lanzamiento`, `saga`, `duracion_minutos`, `calificacion_imdb`, `estado` y `creado_en`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (calificacion_imdb >= 1.0 AND calificacion_imdb <= 10.0)` para el campo `calificacion_imdb`, asegurando que las calificaciones se mantengan dentro de un rango válido (1.0 a 10.0). También se incluyó `CHECK (duracion_minutos > 0)`.
    *   El campo `fecha_lanzamiento` se definió como `DATE` para la práctica de fechas básicas.
    *   El campo `estado` utiliza un `ENUM` (`'disponible', 'archivada', 'proximamente'`) para categorizar el estado de la película.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 11 registros de películas de ciencia ficción variadas en la tabla `peliculas_sf`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo películas de diferentes sagas y años de lanzamiento.
    *   Los datos son realistas e incluyen diferentes directores, fechas de lanzamiento, duraciones y calificaciones.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la saga de ciencia ficción, haciendo uso de funciones de fecha:
        *   Listar todas las películas disponibles, ordenadas por fecha de lanzamiento.
        *   Contar el número de películas por saga (incluyendo las que no pertenecen a una saga).
        *   Encontrar películas lanzadas en una década específica (los 80s).
        *   Listar películas con una duración mayor a 150 minutos.
        *   Mostrar la película más antigua y la más reciente.
        *   Calcular el promedio de calificación IMDb para una saga específica.
    *   Todas las consultas utilizan alias claros para las columnas resultantes, facilitando la lectura de los reportes.

## Cómo validar la solución

Para validar esta resolución, sigue los siguientes pasos en tu entorno MySQL:

1.  **Ejecutar el esquema de la base de datos:**
    ```bash
    mysql -u tu_usuario -p < ddl/schema.sql
    ```
2.  **Insertar los datos de prueba:**
    ```bash
    mysql -u tu_usuario -p < dml/inserts.sql
    ```
3.  **Ejecutar las consultas para obtener los reportes:**
    ```bash
    mysql -u tu_usuario -p < dql/consultas.sql
    ```
    Alternativamente, puedes copiar y pegar el contenido de `dql/consultas.sql` directamente en tu cliente MySQL (Workbench, terminal, etc.) para ver los resultados de cada consulta individualmente.

Asegúrate de reemplazar `tu_usuario` con tu nombre de usuario de MySQL. El sistema te pedirá tu contraseña.

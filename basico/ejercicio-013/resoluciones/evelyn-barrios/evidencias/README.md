# Resolución del Ejercicio 013 - Catálogo de Películas de Miedo

## Temática: Catálogo de Películas de Miedo

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar un catálogo de películas de miedo, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL.

## Objetivo

El objetivo principal fue diseñar una estructura de tabla coherente con la temática de "catálogo de películas de miedo", insertar datos realistas y luego realizar consultas que permitan obtener información útil y reportes sobre las películas.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definió la tabla `peliculas_miedo` (renombrada de la plantilla original `basico_ejercicio_013` para mayor claridad y relevancia con la temática).
    *   La tabla `peliculas_miedo` incluye campos como `id`, `titulo`, `director`, `año_lanzamiento`, `genero`, `calificacion_imdb`, `duracion_minutos`, `estado` y `creado_en`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (calificacion_imdb >= 1.0 AND calificacion_imdb <= 10.0)` para el campo `calificacion_imdb`, asegurando que las calificaciones se mantengan dentro de un rango válido (1.0 a 10.0), cumpliendo con el requisito de aplicar al menos una validación o restricción.
    *   El campo `estado` utiliza un `ENUM` (`'disponible', 'oculto', 'proximamente'`) para categorizar el estado de la película en el catálogo.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 10 registros de películas de miedo variadas en la tabla `peliculas_miedo`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas.
    *   Los datos son realistas e incluyen diferentes directores, años de lanzamiento, géneros y calificaciones.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 5 consultas DQL (cumpliendo el mínimo de 5) para extraer información relevante de la gestión de tareas:
        *   Listar todas las películas disponibles, ordenadas por título.
        *   Contar el número de películas por género.
        *   Identificar las 3 películas mejor calificadas (según IMDb).
        *   Listar películas lanzadas antes de un año específico (1980).
        *   Mostrar películas dirigidas por un director específico (`'Stanley Kubrick'`) que estén disponibles.
        *   Calcular la duración promedio de las películas por género.
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
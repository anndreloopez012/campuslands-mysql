# Resolución del Ejercicio 012 - Playlist Musical

## Temática: Playlist Musical

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar una playlist musical, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL.

## Objetivo

El objetivo principal fue diseñar una estructura de tabla coherente con la temática de "playlist musical", insertar datos realistas y luego realizar consultas que permitan obtener información útil y reportes sobre las canciones.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definió la tabla `canciones` (renombrada de la plantilla original `basico_ejercicio_012` para mayor claridad y relevancia con la temática).
    *   La tabla `canciones` incluye campos como `id`, `titulo`, `artista`, `album`, `genero`, `duracion_segundos`, `reproducciones`, `fecha_lanzamiento` y `estado`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (duracion_segundos > 0)` para asegurar que la duración de una canción siempre sea un valor positivo, cumpliendo con el requisito de aplicar al menos una validación o restricción.
    *   El campo `reproducciones` se definió como `BIGINT` para soportar un alto número de reproducciones y con un `DEFAULT 0`.
    *   El campo `estado` utiliza un `ENUM` (`'disponible','oculto','archivado'`) para categorizar el estado de la canción de forma más específica.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 10 registros de canciones variadas en la tabla `canciones`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas.
    *   Los datos son realistas e incluyen diferentes géneros, artistas y fechas de lanzamiento.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la playlist:
        *   Listar todas las canciones disponibles, ordenadas por título.
        *   Contar el número total de canciones por artista y calcular el promedio de reproducciones.
        *   Identificar las 3 canciones con más reproducciones.
        *   Filtrar canciones de un género específico (`'Rock'`) con un alto número de reproducciones.
        *   Calcular la duración total de todas las canciones en segundos y minutos.
        *   Mostrar canciones lanzadas antes de una fecha específica (1980).
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

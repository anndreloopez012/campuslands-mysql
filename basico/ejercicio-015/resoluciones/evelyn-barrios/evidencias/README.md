# Resolución del Ejercicio 015 - Biblioteca Gamer (Relaciones Simples)

## Temática: Biblioteca Gamer

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar una biblioteca de videojuegos, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en el manejo de relaciones simples.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "biblioteca gamer", insertar datos realistas que demuestren relaciones entre entidades, y luego realizar consultas que permitan obtener información útil y reportes sobre los juegos y sus géneros, utilizando operaciones `JOIN`.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `generos` y `juegos`.
    *   La tabla `generos` almacena los diferentes tipos de géneros de videojuegos (`id`, `nombre`).
    *   La tabla `juegos` almacena la información de cada videojuego (`id`, `titulo`, `desarrollador`, `fecha_lanzamiento`, `id_genero`, `calificacion_metacritic`, `estado`).
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `generos` y `juegos` mediante la clave foránea `id_genero` en la tabla `juegos`, que referencia a `generos.id`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (calificacion_metacritic >= 0.0 AND calificacion_metacritic <= 100.0)` para el campo `calificacion_metacritic`, asegurando que las calificaciones se mantengan dentro de un rango válido (0.0 a 100.0).
    *   El campo `estado` utiliza un `ENUM` (`'disponible', 'jugando', 'completado', 'pendiente'`) para categorizar el estado del juego en la biblioteca del usuario.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 6 registros en la tabla `generos`.
    *   Se insertaron 12 registros de videojuegos variados en la tabla `juegos`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo juegos de diversos géneros, desarrolladores y estados.
    *   Los datos son realistas e incluyen diferentes títulos, desarrolladores, fechas de lanzamiento, calificaciones y estados.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la biblioteca gamer, haciendo uso de operaciones `JOIN` para combinar datos de ambas tablas:
        *   Listar todos los juegos con su género, ordenados por título.
        *   Contar el número de juegos por género.
        *   Encontrar los juegos con calificación Metacritic superior a 90.0 y que estén disponibles.
        *   Listar juegos de un desarrollador específico.
        *   Mostrar los 5 juegos mejor calificados de todos los tiempos.
        *   Listar juegos que están actualmente en estado 'jugando' o 'pendiente'.
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

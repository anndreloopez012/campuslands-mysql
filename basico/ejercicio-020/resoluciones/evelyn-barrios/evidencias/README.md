# Resolución del Ejercicio 020 - Estudio de Tatuajes (SELECT)

## Temática: Estudio de Tatuajes

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar artistas y citas en un estudio de tatuajes. Se aplican los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `SELECT` para la extracción de información.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "estudio de tatuajes", insertar datos realistas que demuestren relaciones entre entidades, y luego realizar consultas que permitan obtener información útil y reportes sobre los artistas y sus citas.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `artistas` y `citas`.
    *   La tabla `artistas` almacena la información de cada tatuador (`id`, `nombre`, `apellido`, `especialidad`, `años_experiencia`, `estado`). El campo `id` se definió como `PRIMARY KEY`.
    *   La tabla `citas` almacena los detalles de cada cita programada (`id`, `id_artista`, `fecha_cita`, `hora_cita`, `descripcion_tatuaje`, `precio_estimado`, `estado`). El campo `id` se definió como `PRIMARY KEY`.
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `artistas` y `citas` mediante la clave foránea `id_artista` en la tabla `citas`, que referencia a `artistas.id`.
    *   **Decisiones técnicas / Restricciones:**
        *   Se añadió una restricción `CHECK (años_experiencia >= 0)` para el campo `años_experiencia`, asegurando que la experiencia no sea un valor negativo.
        *   Se añadió una restricción `CHECK (precio_estimado > 0)` para el campo `precio_estimado`, asegurando que el precio sea un valor positivo.
    *   Los campos `estado` utilizan `ENUM` para categorizar la situación del artista o el estado de la cita.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 8 registros en la tabla `artistas`.
    *   Se insertaron 10 registros de citas variadas en la tabla `citas`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo artistas y citas con diversos estados y características.
    *   Los datos son realistas e incluyen diferentes especialidades, fechas, horas y precios estimados.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante del estudio de tatuajes:
        *   Listar todos los artistas activos, ordenados por años de experiencia.
        *   Contar el número total de citas por artista.
        *   Encontrar las citas confirmadas para una fecha específica.
        *   Listar los artistas que no tienen ninguna cita programada.
        *   Calcular el precio estimado promedio de las citas por especialidad de artista.
        *   Mostrar las citas con un precio estimado superior a un monto específico.
    *   Todas las consultas utilizan alias claros para las columnas resultantes, facilitando la lectura de los reportes.

## Cómo validar la solución

Para validar esta resolución, se deben seguir los siguientes pasos en el entorno MySQL:

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
    Alternativamente, se puede copiar y pegar el contenido de `dql/consultas.sql` directamente en un cliente MySQL (Workbench, terminal, etc.) para visualizar los resultados de cada consulta individualmente.

Se debe reemplazar `tu_usuario` con el nombre de usuario de MySQL. El sistema solicitará la contraseña.
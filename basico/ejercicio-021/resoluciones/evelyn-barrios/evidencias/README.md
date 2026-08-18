# Resolución del Ejercicio 021 - Dibujo Digital (WHERE)

## Temática: Dibujo Digital

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar ilustraciones digitales. Se aplican los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `WHERE` para la extracción y filtrado de información.

## Objetivo

El objetivo principal fue diseñar una estructura de tabla coherente con la temática de "dibujo digital", insertar datos realistas y luego realizar consultas que permitan obtener información útil y reportes sobre las ilustraciones, utilizando diversas condiciones de filtrado con la cláusula `WHERE`.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definió la tabla `ilustraciones` para almacenar la información de cada obra digital (`id`, `titulo`, `artista`, `software_usado`, `fecha_creacion`, `calificacion_promedio`, `estado`). El campo `id` se definió como `PRIMARY KEY`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (calificacion_promedio >= 1.0 AND calificacion_promedio <= 10.0)` para el campo `calificacion_promedio`, asegurando que las calificaciones se mantengan dentro de un rango válido (1.0 a 10.0), cumpliendo con el requisito de aplicar al menos una validación o restricción.
    *   El campo `estado` utiliza un `ENUM` (`'publicado', 'borrador', 'archivado'`) para categorizar la situación actual de la ilustración.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 10 registros de ilustraciones digitales variadas en la tabla `ilustraciones`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo ilustraciones de diversos artistas, software, fechas y estados.
    *   Los datos son realistas e incluyen diferentes títulos, artistas, software utilizado, fechas de creación y calificaciones.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante del catálogo de dibujo digital, haciendo uso extensivo de la cláusula `WHERE`:
        *   Listar todas las ilustraciones publicadas, ordenadas por fecha de creación.
        *   Encontrar ilustraciones creadas por un artista específico con una calificación superior a un umbral.
        *   Listar ilustraciones que utilizan uno de dos softwares específicos.
        *   Mostrar ilustraciones creadas en un año específico y que no están archivadas.
        *   Contar el número de ilustraciones por artista para aquellas con una calificación promedio mínima.
        *   Listar ilustraciones cuyo título contiene una palabra clave y están publicadas.
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
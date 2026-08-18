# Resolución del Ejercicio 019 - Academia de Paracaidismo (INSERT)

## Temática: Academia de Paracaidismo

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar una academia de paracaidismo, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `INSERT`.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "academia de paracaidismo", insertar datos realistas que demuestren relaciones entre entidades, y luego realizar consultas que permitan obtener información útil y reportes sobre los paracaidistas y sus saltos.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `paracaidistas` y `saltos`.
    *   La tabla `paracaidistas` almacena la información de cada persona (`id`, `nombre`, `apellido`, `licencia`, `fecha_registro`, `estado`). El campo `id` se definió como `PRIMARY KEY` y `licencia` como `UNIQUE` para asegurar la unicidad e identificación.
    *   La tabla `saltos` almacena los detalles de cada salto realizado (`id`, `id_paracaidista`, `fecha_salto`, `altura_metros`, `tipo_salto`, `duracion_segundos`, `estado_clima`, `observaciones`). El campo `id` se definió como `PRIMARY KEY`.
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `paracaidistas` y `saltos` mediante la clave foránea `id_paracaidista` en la tabla `saltos`, que referencia a `paracaidistas.id`.
    *   **Decisiones técnicas / Restricciones:**
        *   Se añadió una restricción `CHECK (altura_metros > 0)` para el campo `altura_metros`.
        *   Se añadió una restricción `CHECK (duracion_segundos > 0)` para el campo `duracion_segundos`.
    *   Los campos `estado` y `tipo_salto` utilizan `ENUM` para categorizar la situación del paracaidista o el tipo de salto.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 6 registros en la tabla `paracaidistas`.
    *   Se insertaron 10 registros de saltos variados en la tabla `saltos`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo paracaidistas y saltos con diversos estados y características.
    *   Los datos son realistas e incluyen diferentes fechas de salto, alturas, tipos de salto y condiciones climáticas.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la academia de paracaidismo:
        *   Listar todos los paracaidistas activos, ordenados por apellido y nombre.
        *   Contar el número total de saltos realizados por cada paracaidista.
        *   Encontrar los saltos realizados a una altura superior a un valor específico.
        *   Listar los paracaidistas que no han realizado ningún salto.
        *   Calcular la duración promedio de los saltos por tipo de salto.
        *   Mostrar los saltos realizados en una fecha específica.
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
# Resolución del Ejercicio 016 - Restaurante de Comida Urbana (CREATE TABLE)

## Temática: Restaurante de Comida Urbana

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar un restaurante de comida urbana, aplicando los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `CREATE TABLE`.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "restaurante de comida urbana", insertar datos realistas y luego realizar consultas que permitan obtener información útil y reportes sobre el menú y sus categorías, demostrando la correcta aplicación de `CREATE TABLE` y relaciones simples.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `categorias_plato` y `platos`.
    *   La tabla `categorias_plato` almacena los diferentes tipos de categorías de alimentos (`id`, `nombre`, `descripcion`).
    *   La tabla `platos` almacena la información de cada plato del menú (`id`, `titulo`, `descripcion`, `precio`, `id_categoria`, `disponible`).
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `categorias_plato` y `platos` mediante la clave foránea `id_categoria` en la tabla `platos`, que referencia a `categorias_plato.id`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (precio > 0)` para el campo `precio`, asegurando que el precio de un plato sea siempre un valor positivo, cumpliendo con el requisito de aplicar al menos una validación o restricción.
    *   El campo `disponible` se definió como `BOOLEAN` para indicar si un plato está actualmente en el menú.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 4 registros en la tabla `categorias_plato`.
    *   Se insertaron 10 registros de platos variados en la tabla `platos`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo platos de diversas categorías y estados de disponibilidad.
    *   Los datos son realistas e incluyen diferentes títulos, descripciones, precios y categorías.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 5 consultas DQL (cumpliendo el mínimo de 5) para extraer información relevante del restaurante, haciendo uso de operaciones `JOIN` para combinar datos de ambas tablas:
        *   Listar todos los platos disponibles con su categoría, ordenados por categoría y título.
        *   Contar el número de platos por categoría.
        *   Encontrar los platos cuyo precio sea superior a 10.00.
        *   Listar todas las categorías que tienen al menos 2 platos disponibles.
        *   Mostrar el plato más caro y el más barato del menú.
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
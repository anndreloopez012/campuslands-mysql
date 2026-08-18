# Resolución del Ejercicio 017 - Gestión de Empleados y Departamentos

## Temática: Gestión de Empleados y Departamentos

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar empleados y sus respectivos departamentos en una empresa. Se aplican los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en el manejo de relaciones simples entre tablas.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "gestión de empleados y departamentos", insertar datos realistas que demuestren relaciones entre entidades, y luego realizar consultas que permitan obtener información útil y reportes sobre el personal y la organización.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `departamentos` y `empleados`.
    *   La tabla `departamentos` almacena la información de cada departamento (`id`, `nombre`, `ubicacion`).
    *   La tabla `empleados` almacena los datos de cada empleado (`id`, `nombre`, `apellido`, `email`, `fecha_contratacion`, `salario`, `id_departamento`, `estado`).
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `departamentos` y `empleados` mediante la clave foránea `id_departamento` en la tabla `empleados`, que referencia a `departamentos.id`.
    *   **Decisión técnica / Restricción:** Se añadió una restricción `CHECK (salario > 0)` para el campo `salario`, asegurando que el salario de un empleado sea siempre un valor positivo, cumpliendo con el requisito de aplicar al menos una validación o restricción.
    *   El campo `estado` utiliza un `ENUM` (`'activo', 'inactivo', 'licencia'`) para categorizar la situación laboral del empleado.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 5 registros en la tabla `departamentos`.
    *   Se insertaron 10 registros de empleados variados en la tabla `empleados`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo empleados de diversos departamentos, salarios y estados.
    *   Los datos son realistas e incluyen diferentes nombres, apellidos, correos electrónicos, fechas de contratación y salarios.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la gestión de empleados:
        *   Listar todos los empleados con el nombre de su departamento, ordenados por apellido y nombre.
        *   Contar el número de empleados por departamento.
        *   Encontrar los empleados contratados después de una fecha específica.
        *   Listar empleados con un salario superior a un monto determinado.
        *   Mostrar el empleado con el salario más alto y el más bajo.
        *   Listar todos los empleados activos de un departamento específico.
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
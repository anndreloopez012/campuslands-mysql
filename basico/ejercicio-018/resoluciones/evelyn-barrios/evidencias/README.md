# Resolución del Ejercicio 018 - Gestión de Viajes y Turismo (PRIMARY KEY)

## Temática: Gestión de Viajes y Turismo

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar destinos turísticos y reservas de viajes. Se aplican los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `PRIMARY KEY` y la demostración de una estructura de base de datos relacional.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "viajes y turismo", insertar datos realistas que demuestren relaciones entre entidades, y luego realizar consultas que permitan obtener información útil y reportes sobre los destinos y las reservas.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `destinos` y `reservas`.
    *   La tabla `destinos` almacena la información de cada destino turístico (`id`, `nombre`, `pais`, `descripcion`, `precio_promedio_noche`, `estado`). El campo `id` se definió como `PRIMARY KEY` para asegurar la unicidad e identificación de cada destino.
    *   La tabla `reservas` almacena los detalles de cada reserva de viaje (`id`, `id_destino`, `fecha_inicio`, `fecha_fin`, `numero_personas`, `precio_total`, `estado`). El campo `id` se definió como `PRIMARY KEY` para asegurar la unicidad e identificación de cada reserva.
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `destinos` y `reservas` mediante la clave foránea `id_destino` en la tabla `reservas`, que referencia a `destinos.id`.
    *   **Decisiones técnicas / Restricciones:**
        *   Se añadió una restricción `CHECK (precio_promedio_noche > 0)` para el campo `precio_promedio_noche`.
        *   Se añadió una restricción `CHECK (fecha_fin >= fecha_inicio)` para el campo `fecha_fin`.
        *   Se añadió una restricción `CHECK (numero_personas > 0)` para el campo `numero_personas`.
        *   Se añadió una restricción `CHECK (precio_total > 0)` para el campo `precio_total`.
    *   Los campos `estado` utilizan `ENUM` para categorizar la situación del destino o la reserva.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 9 registros en la tabla `destinos`.
    *   Se insertaron 11 registros de reservas variadas en la tabla `reservas`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas, incluyendo destinos y reservas con diversos estados y características.
    *   Los datos son realistas e incluyen diferentes destinos, fechas de viaje, número de personas y precios.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la gestión de viajes:
        *   Listar todos los destinos activos, ordenados por país y nombre.
        *   Contar el número de reservas por destino.
        *   Encontrar las reservas confirmadas con un precio total superior a un monto específico.
        *   Listar los destinos que no tienen ninguna reserva confirmada.
        *   Calcular el ingreso total de todas las reservas confirmadas.
        *   Mostrar las reservas que inician en un mes y año específicos.
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
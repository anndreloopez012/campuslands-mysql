# Resolución del Ejercicio 022 - Gestión de Pedidos en Tienda Online (UPDATE)

## Temática: Gestión de Pedidos en Tienda Online

Este ejercicio se enfoca en la creación de una base de datos simple para gestionar productos y pedidos en una tienda online. Se aplican los conocimientos básicos de DDL (Data Definition Language), DML (Data Manipulation Language) y DQL (Data Query Language) en MySQL, con énfasis en la instrucción `UPDATE` para la modificación de datos.

## Objetivo

El objetivo principal fue diseñar una estructura de tablas coherente con la temática de "gestión de pedidos", insertar datos realistas y luego realizar consultas que permitan obtener información útil y reportes sobre los productos y el estado de los pedidos, demostrando la capacidad de modificar registros existentes mediante `UPDATE`.

## Cómo se aplicó la solución

La solución se organizó en tres archivos SQL principales, siguiendo las buenas prácticas de separación de responsabilidades:

1.  **`ddl/schema.sql`**:
    *   Se creó la base de datos `campuslands_mysql` (si no existía).
    *   Se definieron dos tablas principales: `productos` y `pedidos`.
    *   La tabla `productos` almacena la información de cada artículo (`id`, `nombre`, `descripcion`, `precio`, `stock`, `estado`). El campo `id` se definió como `PRIMARY KEY`.
    *   La tabla `pedidos` almacena los detalles de cada orden de compra (`id`, `id_producto`, `cantidad`, `fecha_pedido`, `estado_pedido`, `total_pedido`). El campo `id` se definió como `PRIMARY KEY`.
    *   **Relación Simple:** Se estableció una relación uno a muchos entre `productos` y `pedidos` mediante la clave foránea `id_producto` en la tabla `pedidos`, que referencia a `productos.id`.
    *   **Decisiones técnicas / Restricciones:**
        *   Se añadió una restricción `CHECK (precio > 0)` para el campo `precio`.
        *   Se añadió una restricción `CHECK (stock >= 0)` para el campo `stock`.
        *   Se añadió una restricción `CHECK (cantidad > 0)` para el campo `cantidad`.
        *   Se añadió una restricción `CHECK (total_pedido > 0)` para el campo `total_pedido`.
    *   Los campos `estado` y `estado_pedido` utilizan `ENUM` para categorizar la situación del producto o el estado del pedido.

2.  **`dml/inserts.sql`**:
    *   Se insertaron 9 registros en la tabla `productos`.
    *   Se insertaron 10 registros de pedidos variados en la tabla `pedidos`, superando el mínimo de 8 registros solicitados. Estos datos permiten probar diferentes escenarios en las consultas y futuras operaciones `UPDATE`.
    *   Los datos son realistas e incluyen diferentes productos, cantidades, fechas y estados de pedido.
    *   Se incluyen comentarios con ejemplos de sentencias `UPDATE` que se podrían aplicar para modificar el stock de productos o el estado de los pedidos.

3.  **`dql/consultas.sql`**:
    *   Se implementaron 6 consultas DQL (superando el mínimo de 5) para extraer información relevante de la gestión de pedidos:
        *   Listar todos los productos disponibles, ordenados por precio.
        *   Contar el número de pedidos por estado.
        *   Encontrar los pedidos pendientes realizados antes de una fecha específica.
        *   Listar productos con stock bajo.
        *   Calcular el ingreso total de los pedidos entregados.
        *   Mostrar todos los pedidos junto con el nombre del producto y su stock actual.
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

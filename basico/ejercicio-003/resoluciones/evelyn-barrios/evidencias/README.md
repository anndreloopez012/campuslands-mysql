# Solución Ejercicio 003 - Sistema de Inventario RPG

## Autor
- Evelyn Barrios

## 1. Descripción de la Solución
Esta solución implementa un esquema de base de datos para gestionar el inventario de ítems de los personajes en un juego de rol (RPG). El diseño está normalizado para representar las relaciones entre personajes, ítems y sus categorías.

## 2. Decisiones de Diseño
*   **Normalización y Relaciones**:
    *   Se crearon 4 tablas para separar las entidades: `categorias_item`, `items`, `personajes` y una tabla intermedia `inventario_personaje`.
    *   `categorias_item` e `items` tienen una relación de uno a muchos (una categoría puede tener muchos ítems).
    *   `personajes` e `items` tienen una relación de muchos a muchos, resuelta a través de la tabla `inventario_personaje`. Esto permite que un personaje tenga muchos ítems y que un mismo tipo de ítem pueda estar en el inventario de muchos personajes.
*   **Tipos de Datos Adecuados**:
    *   `ENUM` para la columna `rareza` en la tabla `items`, lo que garantiza que solo se puedan usar valores predefinidos y mejora la consistencia de los datos.
    *   `TEXT` para la `descripcion` en `categorias_item`, permitiendo descripciones más largas.
    *   `INT` y `VARCHAR` para identificadores y nombres, respectivamente.
*   **Integridad Referencial**: Se usan `FOREIGN KEY` para asegurar que los registros en `items` apunten a una categoría válida y que los registros en `inventario_personaje` apunten a un personaje y un ítem existentes.
*   **Restricciones (`CHECK` y `UNIQUE`)**:
    *   Se añadió una restricción `CHECK` (`chk_precio_no_negativo`) para que un ítem no pueda tener un precio de venta negativo.
    *   Se usó una restricción `UNIQUE` (`uc_personaje_item`) en la tabla `inventario_personaje` para evitar registros duplicados del mismo ítem para el mismo personaje, promoviendo el uso del campo `cantidad`.

## 3. Cómo Ejecutar los Scripts
Para recrear la base de datos, poblarla con datos y ejecutar las consultas, sigue este orden:

1.  **`ddl/schema.sql`**: Ejecuta este script para crear la base de datos `inventario_rpg` y sus tablas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-003/resoluciones/evelyn-barrios/ddl/schema.sql
    ```
2.  **`dml/inserts.sql`**: Ejecuta este script para insertar los datos de ejemplo.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-003/resoluciones/evelyn-barrios/dml/inserts.sql
    ```
3.  **`dql/consultas.sql`**: Ejecuta este script para ver los resultados de las consultas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-003/resoluciones/evelyn-barrios/dql/consultas.sql
    ```

Asegúrate de tener el servidor MySQL corriendo.
# Solución Ejercicio 033 - Inventario de Skins

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar un inventario de skins de un videojuego tipo shooter. El objetivo principal era demostrar el uso y la importancia de una `PRIMARY KEY`.

La tabla `inventario_skins` contiene una columna `id` definida como `INT AUTO_INCREMENT PRIMARY KEY`. Esta restricción es fundamental porque garantiza que cada skin en la tabla tenga un identificador único y no nulo. Incluso si dos skins tuvieran nombres similares o se insertaran al mismo tiempo, la `PRIMARY KEY` asegura que cada registro sea distinguible y se pueda referenciar sin ambigüedad.

## Objetivo Cumplido

El objetivo de practicar el uso de `PRIMARY KEY` se ha cumplido. La estructura de la tabla `inventario_skins` se basa en esta clave para su integridad. Las consultas en `dql/consultas.sql`, aunque no siempre usan el `id` en el `WHERE`, dependen de esta clave para que funciones de agregación como `COUNT` y `AVG` operen sobre registros únicos y bien definidos.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `shooter_skins_inventory` y la tabla `inventario_skins`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 skins de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis sobre el inventario de skins.

# Solución Ejercicio 009 - Kickboxing

## Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la tabla `kickboxers`.
2.  **`dml/inserts.sql`**: Inserta 9 peleadores de ejemplo, incluyendo algunos retirados y de prueba.
3.  **`dql/consultas.sql`**: Ejecuta sentencias `DELETE` para eliminar registros específicos y en masa de forma controlada.

## Decisiones Técnicas

1.  **Diseño de Tabla**: Se creó la tabla `kickboxers` con campos relevantes para la temática, como `record_victorias`, `record_derrotas` y un `estado` para el peleador.

2.  **Práctica de `DELETE` Controlado**: El objetivo principal del ejercicio es practicar la eliminación segura de datos. El archivo `dql/consultas.sql` demuestra este concepto:
    *   **Verificación Previa**: Antes de cada `DELETE`, se ejecuta una sentencia `SELECT` con la misma cláusula `WHERE` para identificar exactamente qué registros serán eliminados. Esta es una práctica de seguridad fundamental.
    *   **Eliminación Específica**: Se muestra cómo eliminar un único registro por su nombre.
    *   **Eliminación en Masa**: Se muestra cómo eliminar un grupo de registros que cumplen una condición (ej. todos los peleadores con estado 'Retirado').

3.  **Integridad de Datos**: Se utiliza un campo `estado` de tipo `ENUM` para clasificar a los peleadores, lo que facilita el filtrado para operaciones de limpieza como la eliminación de registros de retirados.
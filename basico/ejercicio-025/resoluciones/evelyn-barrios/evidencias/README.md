# Solución Ejercicio 025 - Laboratorio Químico

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar el inventario de un laboratorio químico. El objetivo es llevar un registro de los compuestos, su tipo, cantidad disponible y ubicación.

La tabla principal, `inventario_compuestos`, utiliza restricciones para mantener la integridad de los datos:
- `UNIQUE` en `formula_quimica` para evitar duplicados.
- `ENUM` en `tipo_compuesto` para estandarizar las categorías.
- `DECIMAL` para las cantidades, asegurando precisión en los cálculos.

## Objetivo Cumplido

Las consultas demuestran el uso práctico de `COUNT` y `SUM` para generar reportes útiles a partir de los datos del inventario. Se pueden obtener totales de items, sumas de pesos por categoría y rankings, respondiendo a preguntas clave para la gestión del laboratorio.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos y la tabla.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con datos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para ver los reportes y análisis sobre el inventario. Cada consulta está comentada para explicar su propósito.
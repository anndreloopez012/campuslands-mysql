# Solución Ejercicio 010 - Ventas de Electrónicos

## Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la tabla `ventas_electronica`.
2.  **`dml/inserts.sql`**: Inserta 10 registros de ventas de ejemplo.
3.  **`dql/consultas.sql`**: Ejecuta 5 consultas que utilizan funciones de agregación y `GROUP BY`.

## Decisiones Técnicas

1.  **Temática**: Se eligió una temática de "Ventas de una Tienda de Electrónicos" porque se adapta muy bien a la práctica de funciones de agregación (`SUM`, `AVG`, `COUNT`, `MAX`, `MIN`) y la agrupación de datos.

2.  **Diseño de Tabla**: La tabla `ventas_electronica` se diseñó para almacenar transacciones individuales, con campos como `precio_unitario` y `cantidad_vendida`, lo que permite realizar cálculos de ingresos y análisis de inventario.

3.  **Consultas con Agregación**: El archivo `dql/consultas.sql` es el núcleo del ejercicio. Demuestra cómo responder a preguntas de negocio clave:
    *   Cálculo de ingresos totales (`SUM`).
    *   Conteo de items (`COUNT`).
    *   Agrupación de resultados por categoría (`GROUP BY`) para análisis segmentado.
    *   Búsqueda de valores extremos (`MAX`, `MIN`).
    *   Cálculo de promedios (`AVG`).

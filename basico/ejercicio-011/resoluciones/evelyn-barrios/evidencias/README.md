# Solución Ejercicio 011 - Análisis de Clientes con HAVING

## Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la tabla `pedidos_clientes`.
2.  **`dml/inserts.sql`**: Inserta 10 registros de pedidos de ejemplo.
3.  **`dql/consultas.sql`**: Ejecuta 4 consultas que utilizan `GROUP BY` y `HAVING` para filtrar grupos.

## Decisiones Técnicas

1.  **Temática**: Se eligió una temática de "Análisis de Clientes en E-commerce" para practicar el filtrado de datos agrupados, un escenario de negocio muy común.

2.  **Diseño de Tabla**: La tabla `pedidos_clientes` está diseñada para registrar transacciones, lo que permite agrupar por cliente, producto o fecha para realizar análisis.

3.  **Práctica de `HAVING`**: El archivo `dql/consultas.sql` se centra en el uso de la cláusula `HAVING`. A diferencia de `WHERE` que filtra filas individuales, `HAVING` filtra grupos enteros después de que han sido creados por `GROUP BY`. Los escenarios demuestran cómo:
    *   Encontrar clientes "recurrentes" (con más de un pedido).
    *   Identificar clientes "de alto valor" (con un gasto total superior a un umbral).
    *   Analizar la popularidad de productos y los días de mayor actividad.

4.  **Claridad en Consultas**: Se utilizan alias en las columnas de resultados para que los reportes generados sean claros y fáciles de entender.

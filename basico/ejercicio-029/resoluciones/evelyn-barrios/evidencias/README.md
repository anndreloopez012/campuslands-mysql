# Solución Ejercicio 029 - Marketplace de Accesorios

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para un marketplace de accesorios, con el objetivo de registrar y analizar las ventas. La entidad principal es la tabla `ventas`.

La decisión de diseño más importante fue incluir una columna `fecha_venta` de tipo `DATE`. Esto es fundamental para realizar análisis de negocio basados en el tiempo, como reportes de ingresos mensuales o diarios. Además, se utilizó un campo `categoria` de tipo `ENUM` para estandarizar los tipos de productos y facilitar la agrupación en las consultas.

## Objetivo Cumplido

Los scripts SQL proporcionan una solución completa que permite analizar el rendimiento del marketplace. Las consultas en `dql/consultas.sql` demuestran el uso de funciones de fecha como `DATE_FORMAT`, `MONTH`, `YEAR` y `CURDATE()` con `INTERVAL` para filtrar y agrupar datos, respondiendo a preguntas clave sobre ingresos y tendencias de ventas.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `marketplace_accesorios` y la tabla `ventas`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 registros de ventas.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes reportes y análisis sobre las ventas del marketplace.
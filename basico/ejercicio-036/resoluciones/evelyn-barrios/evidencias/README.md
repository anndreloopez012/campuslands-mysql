# Solución Ejercicio 036 - Autos Hiperdeportivos

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para catalogar autos hiperdeportivos. El objetivo principal era practicar el uso de la cláusula `WHERE` para filtrar datos de manera efectiva.

La tabla `hiperdeportivos` es la entidad central y contiene columnas con diferentes tipos de datos (numéricos, de texto, booleanos y decimales), lo que permite realizar una variedad de consultas de filtrado. Se ha incluido una restricción `UNIQUE` en el modelo para evitar duplicados.

## Objetivo Cumplido

El objetivo de practicar `WHERE` se ha cumplido mediante la creación de 5 consultas en `dql/consultas.sql`. Estas consultas demuestran cómo utilizar `WHERE` con diferentes operadores (`>`, `AND`, `IN`, `BETWEEN`) para seleccionar subconjuntos específicos de datos, respondiendo a preguntas concretas sobre los autos.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `hiperdeportivos_db` y la tabla `hiperdeportivos`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 autos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes reportes filtrados sobre el catálogo de autos.

# Solución Ejercicio 006 - Autos Hiperdeportivos

## 🚀 Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la estructura de la tabla `hiperdeportivos`.
2.  **`dml/inserts.sql`**: Inserta 10 registros de ejemplo en la tabla.
3.  **`dql/consultas.sql`**: Ejecuta 5 consultas de prueba para filtrar los datos.

## 🛠️ Decisiones Técnicas

1.  **Diseño de la Tabla `hiperdeportivos`**: Se creó una tabla con columnas específicas para la temática, como `marca`, `modelo`, `anio`, `velocidad_max_kmh` y `precio_usd`, para permitir consultas realistas y detalladas.

2.  **Restricción de Integridad (`CHECK`)**: Se añadió la restricción `CONSTRAINT chk_anio CHECK (anio > 1980)` para asegurar que solo se registren autos fabricados después de 1980, manteniendo la coherencia de los datos en el contexto de los hiperdeportivos modernos.

3.  **Uso de `ENUM` para Estados**: La columna `estado` se definió como `ENUM('disponible', 'vendido', 'prototipo', 'en_produccion')` para estandarizar los posibles estados de un vehículo. Esto simplifica las consultas de filtrado y evita errores de tipeo.

4.  **Consultas con `WHERE`**: Las consultas en `dql/consultas.sql` fueron diseñadas para demostrar el uso de la cláusula `WHERE` con diferentes operadores (`=`, `>=`, `<`, `AND`, `OR`) y responder a preguntas de negocio específicas, como buscar autos por presupuesto, año, origen o disponibilidad.

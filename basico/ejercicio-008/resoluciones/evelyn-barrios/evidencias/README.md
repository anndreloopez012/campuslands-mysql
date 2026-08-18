# Solución Ejercicio 008 - Fútbol Sala

## Orden de Ejecución

Para recrear la solución, ejecuta los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la tabla `jugadores_futsal` con sus columnas y restricciones.
2.  **`dml/inserts.sql`**: Inserta 8 jugadores con sus estadísticas iniciales.
3.  **`dql/consultas.sql`**: Ejecuta una serie de sentencias `UPDATE` para modificar los datos.

## Decisiones Técnicas

1.  **Diseño de Tabla**: Se creó la tabla `jugadores_futsal` con campos relevantes para la temática, como `goles_anotados`, `asistencias` y `estado`, permitiendo simular escenarios realistas de actualización.

2.  **Uso de `ENUM`**: Las columnas `posicion` y `estado` se definieron como `ENUM` para garantizar la consistencia de los datos y limitar las entradas a un conjunto predefinido de valores.

3.  **Práctica de `UPDATE`**: El archivo `dql/consultas.sql` es el núcleo del ejercicio. Contiene varios escenarios de `UPDATE`:
    *   Actualización de estadísticas individuales usando cálculos (ej. `goles_anotados = goles_anotados + 2`).
    *   Actualización de múltiples columnas en una sola sentencia (cambio de estado y tarjetas).
    *   Actualización masiva de registros basada en una condición (`WHERE`), simulando una transferencia de equipo.
    Se incluyen sentencias `SELECT` de verificación para comprobar el resultado de cada `UPDATE`.
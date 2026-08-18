# Ejercicio 023 - Práctica de UPDATE

Este ejercicio demuestra el uso de la sentencia `UPDATE` en MySQL para modificar registros existentes en la tabla `basico_ejercicio_023`.

## Archivos SQL

### `ddl/schema.sql`

Define la estructura de la tabla `basico_ejercicio_023`. Se ha añadido una restricción `UNIQUE` en la columna `nombre` para asegurar que cada modelo 3D tenga un identificador único, y una restricción `CHECK` para que el `puntaje` esté siempre entre 0 y 100.

### `dml/inserts.sql`

Este archivo contiene tanto las sentencias `INSERT` iniciales como las operaciones `UPDATE` requeridas para el ejercicio.

**Inserciones:** Se han insertado 8 registros de modelos 3D con categorías, puntajes y estados variados, siguiendo la temática de arquitectura 3D.

**Actualizaciones:**

1.  **Actualización de un registro específico**: Se actualiza el `puntaje` a `95.00` y el `estado` a `'activo'` para el modelo con `nombre = 'Modelo 3D Edificio'`. Esto simula la finalización de la revisión de un modelo y la asignación de un puntaje final.
2.  **Actualización condicional**: Se actualiza la `categoria` a `'revisado'` y el `estado` a `'inactivo'` para todos los modelos cuyo `puntaje` sea inferior a `70.00`. Esto podría representar la categorización de modelos de bajo rendimiento o que necesitan una revisión profunda.

### `dql/consultas.sql`

Contiene 5 consultas DQL que permiten verificar los datos y los cambios realizados, así como obtener información relevante sobre los modelos 3D.

## Procedimiento

Para ejecutar y verificar este ejercicio, sigue los siguientes pasos:

1.  Ejecuta el archivo `ddl/schema.sql` para crear la base de datos y la tabla `basico_ejercicio_023`.
2.  Ejecuta el archivo `dml/inserts.sql` para insertar los datos iniciales y aplicar las modificaciones (UPDATE) en la tabla.
3.  Ejecuta el archivo `dql/consultas.sql` para verificar los cambios realizados y obtener los reportes solicitados.
4.  Verifica los resultados en tu cliente MySQL.
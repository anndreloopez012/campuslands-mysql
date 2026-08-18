# Ejercicio 008 - Roles y Permisos

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se creó la tabla `jugadores` con restricciones de integridad.
- Se implementaron tres roles:
  - `administrador_fs`
  - `entrenador_fs`
  - `analista_fs`
- El administrador posee control total sobre la base de datos.
- El entrenador puede consultar, insertar y actualizar jugadores.
- El analista únicamente posee permisos de lectura.
- Se crearon usuarios de ejemplo y se asignó un rol por defecto a cada uno.
- Se utilizaron restricciones `PRIMARY KEY`, `NOT NULL`, `DEFAULT`, `ENUM` y `CHECK`.
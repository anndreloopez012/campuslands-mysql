# Ejercicio 008 - UPDATE para fútbol sala

## Autor

Pablo López

## Descripción

Se creó una tabla llamada `equipos_futbol_sala` para almacenar información de equipos de fútbol sala.

La solución incluye:

- Creación de la tabla.
- Inserción de 8 registros.
- Actualización de registros mediante `UPDATE`.
- Consultas para verificar los cambios realizados.

## Archivos

- ddl/schema.sql
- dml/inserts.sql
- dql/consultas.sql

## Orden de ejecución

1. Ejecutar ddl/schema.sql
2. Ejecutar dml/inserts.sql
3. Ejecutar dql/consultas.sql

## Decisiones técnicas

- Se utilizó `AUTO_INCREMENT` para la llave primaria.
- Se aplicó `NOT NULL` en los campos obligatorios.
- Se utilizó `ENUM` para el estado del equipo.
- Se realizaron varias consultas para comprobar los cambios realizados con `UPDATE`.
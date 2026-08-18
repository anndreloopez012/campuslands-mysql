# Ejercicio 010 - COUNT y SUM para carreras urbanas

## Autor

Pablo López

## Descripción

Se creó una tabla llamada `carreras_urbanas` para almacenar información de corredores y sus premios obtenidos.

La solución incluye:

- Creación de la tabla.
- Inserción de 8 registros.
- Consultas utilizando las funciones `COUNT()` y `SUM()` para obtener estadísticas.

## Archivos

- ddl/schema.sql
- dml/inserts.sql
- dql/consultas.sql

## Orden de ejecución

1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`

## Decisiones técnicas

- Se utilizó `AUTO_INCREMENT` para la clave primaria.
- Se aplicó `NOT NULL` en los campos obligatorios.
- Se utilizó `ENUM` para el estado del corredor.
- Se emplearon las funciones `COUNT()` y `SUM()` para generar reportes.
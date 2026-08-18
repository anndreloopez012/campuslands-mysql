# Ejercicio 006 - WHERE para autos hiperdeportivos

## Autor
Pablo López

## Descripción

Se creó una tabla llamada `autos_hiperdeportivos` para almacenar información de autos hiperdeportivos.

La solución incluye:

- Creación de la tabla.
- Inserción de 8 registros.
- Consultas utilizando la cláusula `WHERE` para filtrar información.

## Archivos

- `ddl/schema.sql`
- `dml/inserts.sql`
- `dql/consultas.sql`

## Orden de ejecución

1. Ejecutar `schema.sql`
2. Ejecutar `inserts.sql`
3. Ejecutar `consultas.sql`

## Decisiones técnicas

- Se utilizó `AUTO_INCREMENT` para el identificador.
- Se aplicó `NOT NULL` en los campos obligatorios.
- Se utilizó `ENUM` para controlar el estado del vehículo.
- Se empleó `DECIMAL` para el precio.
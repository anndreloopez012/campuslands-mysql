# Ejercicio 009 - DELETE controlado para kickboxing

## Autor

Pablo López

## Descripción

Se creó una tabla llamada `peleadores` para administrar información de peleadores de kickboxing.

La solución incluye:

- Creación de la tabla.
- Inserción de 8 registros.
- Eliminación controlada de registros mediante `DELETE`.
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

- Se utilizó AUTO_INCREMENT para la llave primaria.
- Se aplicó NOT NULL en los campos obligatorios.
- Se utilizó ENUM para el estado del peleador.
- Se realizaron eliminaciones específicas usando la cláusula WHERE para evitar borrar todos los registros.
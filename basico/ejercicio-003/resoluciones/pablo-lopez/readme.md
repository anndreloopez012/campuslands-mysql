# Ejercicio 003 - PRIMARY KEY

# Autor
Pablo López

## Base de datos

Inventario de skins shooter.

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones tomadas

- Se utilizó `PRIMARY KEY` con `AUTO_INCREMENT` para identificar cada skin.
- Se agregó una restricción para evitar precios negativos.
- Se utilizó `ENUM` para controlar los estados de las skins.
- Se insertaron 8 registros para probar filtros, agrupaciones y ordenamientos.
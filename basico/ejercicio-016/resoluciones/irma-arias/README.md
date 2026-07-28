# Ejercicio 016 - CREATE TABLE para Restaurante de Comida Urbana

## Descripción
Módulo de datos diseñado para la estructuración y gestión del menú de un restaurante de comida urbana, aplicando una sólida sentencia `CREATE TABLE`, restricciones de integridad (`CHECK`, `DEFAULT`) y consultas analíticas de precios y categorías.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se definió la tabla principal `menu_urbano` utilizando tipos de datos precisos (`DECIMAL` para precios, `INT` para calorías).
* Se incorporaron restricciones `CHECK` para validar de forma estricta las categorías de comida y el estado de disponibilidad.
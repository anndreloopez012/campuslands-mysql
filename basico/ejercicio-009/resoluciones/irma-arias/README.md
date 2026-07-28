# Ejercicio 009 - DELETE controlado para Kickboxing

## Descripción
Módulo de datos enfocado en la gestión de luchadores de kickboxing, aplicando operaciones de eliminación controlada (`DELETE`) bajo criterios lógicos y de estado.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se implementó una tabla con validación de estados (`Activo`, `Retirado`, `Suspendido`).
* Se aplicaron sentencias `DELETE` filtradas para depurar registros inactivos o sancionados antes de realizar los reportes analíticos.
# Ejercicio 013 - Filtros por estado para Catálogo de Películas de Miedo

## Descripción
Módulo de datos diseñado para la administración y filtrado de un catálogo cinematográfico de terror, aplicando validaciones estrictas de estado de cartelera (`CHECK`) y consultas analíticas de ranking.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se implementó el control de estados mediante la restricción `CHECK` asegurando valores estables (`Disponible`, `Proximamente`, `Agotada`, `Archivada`).
* Se estructuraron filtros específicos (`WHERE estado_cartelera = ...`) y cálculos de promedio por subgénero para optimizar los reportes de negocio.
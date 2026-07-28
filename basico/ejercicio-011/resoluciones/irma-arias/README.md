# Ejercicio 011 - Validaciones simples para Ping Pong

## Descripción
Módulo de datos diseñado para la gestión y control de un torneo de ping pong, aplicando restricciones estrictas con cláusulas `CHECK` y valores predeterminados (`DEFAULT`) para garantizar la integridad de los registros.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se aplicaron restricciones `CHECK` en los campos `nivel_experiencia` y `estado` para asegurar que solo admitan categorías predefinidas de negocio.
* Se estructuraron consultas de reporte analítico con cálculos de diferencia de sets y ordenamientos por ranking.
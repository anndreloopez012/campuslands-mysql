# Ejercicio 020 - SELECT para Estudio de Tatuajes

## Descripción
Módulo de datos diseñado para la gestión y análisis de un estudio de tatuajes, enfocándose en la aplicación avanzada de consultas `SELECT`, funciones de agregación (`SUM`, `AVG`, `COUNT`), filtros lógicos y ordenamientos analíticos.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla principal `citas_tatuajes` utilizando tipos de datos precisos (`DECIMAL` para tarifas y `INT` para horas de trabajo).
* Se diseñaron consultas de negocio orientadas a reportes financieros, volumetría por estilo artístico y gestión de agendas.
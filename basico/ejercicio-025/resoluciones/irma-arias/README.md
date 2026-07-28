# Ejercicio 025 - COUNT y SUM para Laboratorio de Fórmulas Químicas

## Descripción
Módulo de datos diseñado para la gestión y análisis estadístico en un laboratorio de fórmulas químicas, implementando de forma rigurosa las funciones de agregación `COUNT` y `SUM`, restricciones de integridad y reportes financieros y volumétricos.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla `formulas_quimicas` utilizando tipos numéricos precisos (`DECIMAL` para volúmenes en litros y costos de producción en USD).
* Se diseñaron consultas analíticas utilizando `GROUP BY`, `COUNT` y `SUM` para evaluar la distribución de inventarios y los costos acumulados por tipo de compuesto.
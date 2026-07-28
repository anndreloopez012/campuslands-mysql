# Ejercicio 019 - INSERT para Paracaidismo

## Descripción
Módulo de datos diseñado para la gestión de una escuela de paracaidismo, enfocándose en la correcta estructuración y carga masiva de registros (`INSERT`), restricciones de validación estricta (`CHECK`) y consultas analíticas por modalidad y altitud.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se implementaron sentencias `INSERT` explícitas para asegurar la integridad de cada atributo en los registros de saltos.
* Se aplicaron validaciones mediante `CHECK` para garantizar que la altitud mínima de salto cumpla con normativas de seguridad (>= 3000 pies).
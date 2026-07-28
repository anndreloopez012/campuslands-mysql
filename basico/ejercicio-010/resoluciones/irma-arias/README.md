# Ejercicio 010 - COUNT y SUM para Carreras Urbanas

## Descripción
Módulo de datos diseñado para la gestión de inscripciones en carreras urbanas, aplicando funciones de agregación (`COUNT` y `SUM`) para calcular indicadores financieros y estadísticas de participación.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se implementó un control numérico con `DECIMAL` para el costo de inscripción.
* Se utilizaron funciones `COUNT` y `SUM` combinadas con la cláusula `GROUP BY` para obtener reportes analíticos precisos de recaudación y asistencia.
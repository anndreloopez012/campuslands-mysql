# Ejercicio 023 - UPDATE para Arquitectura 3D

## Descripción
Módulo de datos diseñado para la gestión y actualización dinámica de proyectos de arquitectura 3D, aplicando la instrucción `UPDATE` para la modificación controlada de estados y presupuestos, acompañado de restricciones de integridad y reportes analíticos.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla `proyectos_arquitectura` utilizando tipos precisos (`DECIMAL` para áreas en metros cuadrados y presupuestos monetarios).
* Se incorporaron sentencias `UPDATE` dentro del flujo DML para simular la evolución de los proyectos (cambios de fase y reajustes financieros).
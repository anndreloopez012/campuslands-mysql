
# Ejercicio 005 - SELECT para taller mecánico de motos

## Descripción
Módulo de gestión de datos para un taller mecánico de motocicletas, diseñado para dominar la cláusula `SELECT`, funciones de agregación, filtrado avanzado y proyecciones con alias claros en MySQL.

## Decisiones Técnicas
- **Tipos de datos:** Se utilizó `DECIMAL(10,2)` para los costos de mano de obra y repuestos para asegurar precisión monetaria.
- **Restricciones:** Se implementó una columna `ENUM` para controlar los estados del flujo de reparación (`pendiente`, `en_proceso`, `completada`, `entregada`) y un `CHECK` para evitar costos negativos.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
# Ejercicio 001 - Transacciones para torneo esports MOBA

## Descripción
Módulo avanzado de datos para la gestión de un torneo de esports MOBA, diseñado bajo un enfoque profesional para la manipulación segura de estados mediante transacciones, restricciones de integridad y consultas analíticas complejas en MySQL.

## Decisiones Técnicas
- **Tipos de datos:** Se empleó `DECIMAL(12,2)` para manejar con precisión la acumulación monetaria de premios en efectivo de los equipos.
- **Restricciones y Estados:** Se implementó una columna `ENUM` con los estados del torneo (`clasificado`, `en_competencia`, `eliminado`, `campeon`) y validaciones lógicas para las partidas jugadas.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
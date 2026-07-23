
# Ejercicio 002 - Tipos de datos para ranking battle royale

## Descripción
Módulo de datos estructurado para un ranking de Battle Royale, aplicando tipos de datos óptimos en MySQL, restricciones de integridad y consultas analíticas de negocio.

## Decisiones Técnicas
- **Tipos de datos:** Uso de `DECIMAL(10,2)` para puntajes y `DECIMAL(4,2)` para el ratio KDA garantizando precisión numérica.
- **Restricciones:** Se aplicó un campo `ENUM` para los estados del usuario y una restricción `CHECK` para asegurar que las victorias no superen las partidas jugadas.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
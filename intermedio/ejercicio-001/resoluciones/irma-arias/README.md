# Ejercicio 001 - INNER JOIN para torneo esports MOBA

## Descripción
Módulo intermedio diseñado para practicar el uso de consultas multitabla mediante `INNER JOIN` en MySQL, estructurado bajo un escenario de un torneo internacional de esports MOBA.

## Decisiones Técnicas
- **Relaciones:** Se implementó una relación de 1 a N entre la tabla `equipos` y la tabla `jugadores` mediante una llave foránea con borrado en cascada (`ON DELETE CASCADE`).
- **Validaciones:** Uso de restricciones de tipo `ENUM` para controlar los roles y estados válidos, así como validación `CHECK` para evitar puntos de ranking negativos.

## Orden de Ejecución
1. `ddl/schema.sql` (Creación de la base de datos y tablas relacionales)
2. `dml/inserts.sql` (Inserción de registros realistas de equipos y jugadores)
3. `dql/consultas.sql` (Ejecución de reportes analíticos con `INNER JOIN`)
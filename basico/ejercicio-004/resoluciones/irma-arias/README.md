
# Ejercicio 004 - INSERT para garaje de motos

## Descripción
Módulo de gestión para un garaje de motocicletas, enfocado en dominar la instrucción `INSERT` en MySQL, estructuración de tablas relacionales limpias y validación de restricciones.

## Decisiones Técnicas
- **Tipos de datos:** Se utilizó `DECIMAL(10,2)` para manejar con precisión la tarifa de mantenimiento monetaria, y `YEAR` para el año de fabricación.
- **Restricciones:** Se aplicó un campo `ENUM` para controlar los estados operativos de las motos (`disponible`, `en_mantenimiento`, `retirada`) y una restricción `CHECK` para impedir cilindradas negativas o iguales a cero.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
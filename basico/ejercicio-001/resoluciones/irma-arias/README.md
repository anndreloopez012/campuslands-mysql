# Ejercicio 001 - Torneo Esports MOBA

## Descripción
Solución desarrollada para el nivel básico de MySQL, implementando el modelo de datos para un torneo de esports de tipo MOBA. Permite gestionar participantes, roles, equipos, puntajes de rendimiento (KDA) y estadísticas generales.

## Decisiones Técnicas
- **Tipos de datos:** Se utilizó `DECIMAL(4,2)` para el puntaje KDA con el fin de asegurar precisión matemática en los promedios. Se implementó un tipo `ENUM` para controlar los estados válidos de los participantes (`activo`, `suspendido`, `eliminado`).
- **Restricciones (Constraints):** Se aplicaron validaciones mediante `CHECK` para garantizar que el KDA y las partidas jugadas nunca tengan valores negativos.
- **Estructura:** Los scripts se dividieron rigurosamente por su responsabilidad en carpetas separadas (`ddl`, `dml`, `dql`).

## Instrucciones de Ejecución
Ejecute los scripts en su cliente de MySQL preferido en el siguiente orden estricto:
1. `ddl/schema.sql` (Crea la base de datos y la estructura de la tabla).
2. `dml/inserts.sql` (Inserta los registros de prueba).
3. `dql/consultas.sql` (Ejecuta los reportes y consultas analíticas).
# Módulo de Datos - Ping Pong (Ejercicio 011 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la aplicación de validaciones estrictas y restricciones lógicas (`CHECK` constraints) para garantizar la consistencia en el registro de estadísticas de jugadores de ping pong.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `jugadores_pingpong` con validaciones robustas (como verificar que los partidos ganados no superen a los jugados).
- **dml/inserts.sql**: Inserción de 8 registros de atletas distribuidos por categorías y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas para evaluar el rendimiento, promedios por categoría y rankings de la academia.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
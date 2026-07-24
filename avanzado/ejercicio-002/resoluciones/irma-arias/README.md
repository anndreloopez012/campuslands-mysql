# Ejercicio 002 - Procedimientos almacenados para ranking battle royale

## Descripción
Módulo avanzado de base de datos para un ranking battle royale, enfocado en el diseño e implementación de procedimientos almacenados (`STORED PROCEDURES`) en MySQL para la gestión transaccional de estadísticas de usuarios.

## Decisiones Técnicas
- **Procedimientos Almacenados:** Se implementó `sp_actualizar_puntos_jugador` para automatizar la actualización concurrente de puntos, eliminaciones y conteo de partidas de forma segura.
- **Tipos de datos y Restricciones:** Se aplicaron campos `ENUM` para los estados del jugador y validaciones mediante restricciones lógicas de integridad.

## Orden de Ejecución
1. `ddl/schema.sql` (Crea la estructura y los procedimientos almacenados)
2. `dml/inserts.sql` (Inserta los datos base de prueba)
3. `dql/consultas.sql` (Prueba el procedimiento y ejecuta los reportes analíticos)
# Ejercicio 002 - LEFT JOIN para ranking battle royale

## Descripción
Módulo intermedio enfocado en el uso de `LEFT JOIN` en MySQL para la gestión de un ranking de Battle Royale, permitiendo analizar tanto el rendimiento de los jugadores activos como aquellos que aún no registran partidas.

## Decisiones Técnicas
- **Uso de LEFT JOIN:** Se estructuró la consulta principal partiendo de la tabla `jugadores_br` hacia `estadisticas_partidas` para asegurar que ningún usuario se pierda en los reportes, incluso si no tiene registros de juego.
- **Funciones Útiles:** Implementación de `COALESCE` para manejar valores nulos en reportes numéricos de daño y eliminaciones.

## Orden de Ejecución
1. `ddl/schema.sql` (Creación de tablas y restricciones)
2. `dml/inserts.sql` (Inserción de datos incluyendo casos límite sin estadísticas)
3. `dql/consultas.sql` (Ejecución de consultas y reportes con `LEFT JOIN`)
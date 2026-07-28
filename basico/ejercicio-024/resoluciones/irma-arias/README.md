# Ejercicio 024 - DELETE Controlado para Soldadura

## Descripción
Módulo de datos diseñado para la administración y control de calidad en procesos de soldadura industrial, implementando sentencias de eliminación controlada (`DELETE`) sobre registros defectuosos u obsoletos, garantizando la consistencia analítica.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla `trabajos_soldadura` utilizando tipos de datos precisos (`DECIMAL` para espesores en milímetros y `INT` para parámetros de amperaje).
* Se aplicaron filtros específicos en las sentencias `DELETE` para evitar borrados masivos accidentales, restringiéndolos a criterios de inspección y tolerancias dimensionales.
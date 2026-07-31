# Módulo de Datos - Kickboxing (Ejercicio 039)

Solución desarrollada en **MySQL** aplicando prácticas profesionales de eliminación controlada de registros (`DELETE`), restricciones de validación `CHECK` y consultas analíticas para la gestión de una academia de combate.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_kickboxing` y la tabla `luchadores_kickboxing` con validaciones robustas.
- **dml/inserts.sql**: Inserción de 8 registros iniciales y ejecución de sentencias `DELETE` controladas para depurar registros inactivos o retirados según reglas de negocio.
- **dql/consultas.sql**: 5 consultas analíticas para evaluar rankings de victorias, promedios por categoría y filtros de rendimiento activo.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
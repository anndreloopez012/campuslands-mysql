# Módulo de Datos - Soldadura (Ejercicio 054)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de eliminación controlada de registros mediante la cláusula **`DELETE`** con filtros estrictos, restricciones de validación numérica (`CHECK`), control de estados con `ENUM` y consultas analíticas posteriores.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_soldadura_industrial` y la tabla `trabajos_soldadura` con tipos de datos estructurados y validaciones de rangos físicos.
- **dml/inserts.sql**: Inserción de 8 registros iniciales de cordones de soldadura y ejecución de sentencias de borrado controlado (`DELETE`) para depurar registros rechazados, defectuosos críticos y específicos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros por tipo de proceso, funciones de agregación (`COUNT`, `AVG`, `MAX`, `SUM`), agrupaciones y ordenamientos para verificar la integridad post-borrado.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql` (contiene inserciones y borrados controlados)
3. Ejecutar `dql/consultas.sql`
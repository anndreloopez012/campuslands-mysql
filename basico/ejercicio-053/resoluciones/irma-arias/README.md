# Módulo de Datos - Arquitectura 3D (Ejercicio 053)

Solución desarrollada en **MySQL** enfocada en la práctica avanzada de modificación de datos mediante sentencias **`UPDATE`**, aplicación de restricciones de validación numérica (`CHECK`), control de estados con `ENUM` y consultas analíticas de verificación.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_arquitectura_3d` y la tabla `proyectos_arquitectura` con tipos de datos precisos y validaciones de integridad.
- **dml/inserts.sql**: Inserción de 8 registros iniciales de proyectos arquitectónicos y aplicación de operaciones de actualización (`UPDATE`) para cambiar estados e incrementar presupuestos por criterios específicos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros por software, funciones de agregación (`COUNT`, `SUM`, `MAX`, `AVG`), agrupaciones y ordenamientos para verificar los datos actualizados.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql` (contiene inserciones y actualizaciones)
3. Ejecutar `dql/consultas.sql`
# Módulo de Datos - Tecnología Académica (Ejercicio 028)

Solución desarrollada en **MySQL** aplicando diseño profesional de bases de datos para un entorno de academia tecnológica con énfasis en filtros por estado.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_academia_tech` y la tabla `cursos_tech` con restricciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de cursos con diferentes tecnologías, costos y estados variados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio, evaluando filtros por estado (`WHERE estado = ...`), funciones de agregación (`COUNT`, `AVG`, `MAX`), ordenamientos y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor de base de datos MySQL en el orden estricto de capas:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
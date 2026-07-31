# Módulo de Datos - Equipo de Streaming (Ejercicio 060)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de **relaciones simples (Foreign Keys)** entre tablas, restricciones de validación numérica (`CHECK`), control de estados operativos con `ENUM` y consultas multitabla con `JOIN`.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_equipo_streaming`, la tabla padre `categorias_equipo` y la tabla principal `equipos_streaming` vinculadas mediante clave foránea.
- **dml/inserts.sql**: Inserción de registros iniciales de categorías y 8 equipos de streaming detallados con atributos de precio, stock y estado.
- **dql/consultas.sql**: 5 consultas analíticas aplicando uniones `INNER JOIN`, agrupaciones `GROUP BY`, funciones de agregación (`COUNT`, `AVG`, `SUM`) y filtros por estado.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
# Módulo de Datos - Equipo de Streaming (Ejercicio 030)

Solución desarrollada en **MySQL** aplicando modelado relacional básico entre categorías y equipos para un estudio de streaming profesional.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_equipo_streaming`, la tabla independiente `categorias_equipo` y la tabla principal `equipos_streaming` con llave foránea y restricciones de validación.
- **dml/inserts.sql**: Inserción de registros iniciales para categorías y mínimo 8 equipos de streaming asociados.
- **dql/consultas.sql**: 5 consultas analíticas evaluando uniones (`INNER JOIN`, `LEFT JOIN`), funciones de agregación (`COUNT`, `AVG`, `SUM`), filtros por estado y precios.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor de base de datos MySQL en el orden estricto de capas:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`

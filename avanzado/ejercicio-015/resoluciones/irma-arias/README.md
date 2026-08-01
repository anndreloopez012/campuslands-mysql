# Módulo de Datos - Biblioteca Gamer (Ejercicio 015 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el modelado de relaciones simples (`FOREIGN KEY`) entre tablas maestras (`plataformas`) y transaccionales (`juegos_gamer`), aplicando consultas relacionales con `JOIN` y agregaciones.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y las tablas normalizadas `plataformas` y `juegos_gamer` con restricciones de integridad.
- **dml/inserts.sql**: Inserción de registros maestros de plataformas y 8 títulos de videojuegos con metadatos de precios, horas y estados.
- **dql/consultas.sql**: 5 consultas analíticas aplicando uniones relacionales, filtros por estado y reportes de inversión.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
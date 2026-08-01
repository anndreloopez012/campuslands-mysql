# Módulo de Datos - Viajes y Turismo (Ejercicio 018 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el diseño y aplicación estricta de la clave primaria (`PRIMARY KEY`), restricciones de unicidad (`UNIQUE`) y validaciones numéricas para un sistema de paquetes turísticos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `paquetes_turisticos` configurada con clave primaria autoincremental y restricciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de destinos turísticos internacionales con metadatos de duración, costos, cupos y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas evaluando rankings de precios, filtros por disponibilidad y agregaciones por continente.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
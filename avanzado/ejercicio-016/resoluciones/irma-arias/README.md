# Módulo de Datos - Restaurante de Comida Urbana (Ejercicio 016 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el diseño estructurado y la creación óptima de tablas (`CREATE TABLE`), aplicando restricciones de integridad para el control de un menú de comida rápida urbana.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `menu_urbano` con validaciones de precios y calorías mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de platos urbanos con diversas categorías, precios y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas evaluando rangos de precios, filtros por disponibilidad y agrupamientos por categoría.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
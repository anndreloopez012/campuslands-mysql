# Módulo de Datos - Restaurante de Comida Urbana (Ejercicio 046)

Solución desarrollada en **MySQL** enfocada en la creación de estructuras de tablas robustas (`CREATE TABLE`), restricciones de validación numérica (`CHECK`), control de estados con `ENUM` y consultas analíticas comerciales.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_restaurante_urbano` y la tabla `platillos_urbanos` con tipos de datos estructurados, booleanos y validaciones de integridad.
- **dml/inserts.sql**: Inserción de 8 registros de platillos de comida rápida urbana con precios, calorías y estados variados.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros por estado, funciones de agregación (`COUNT`, `AVG`, `MAX`), agrupaciones por categoría y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
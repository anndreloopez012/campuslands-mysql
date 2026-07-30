# Módulo de Datos - Videojuego de Acción y Aventura (Ejercicio 027)

Solución desarrollada en **MySQL** aplicando criterios técnicos profesionales de modelado de datos para un entorno de videojuego de acción y aventura.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_accion_aventura` y la tabla `misiones` con validación de restricciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de misiones variadas con diferentes dificultades, regiones y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio (filtros, funciones de agregación `AVG`, `COUNT`, `MAX`, ordenamientos y `LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor de base de datos MySQL en el siguiente orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
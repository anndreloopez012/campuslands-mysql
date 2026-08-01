# Módulo de Datos - Paracaidismo (Ejercicio 019 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de inserción de datos (`INSERT`), restricciones de integridad numérica para alturas y costos, y consultas analíticas para un centro de paracaidismo.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `saltos_paracaidismo` con validaciones de rangos de altura y precios mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de saltos con diversas modalidades, altitud, costos y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas evaluando rankings de altitud, filtros por estado y agregaciones por modalidad.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
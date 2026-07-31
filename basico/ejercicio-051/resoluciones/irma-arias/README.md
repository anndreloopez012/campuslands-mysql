
# Módulo de Datos - Dibujo Digital (Ejercicio 051)

Solución desarrollada en **MySQL** enfocada en el dominio y práctica avanzada de la cláusula de filtrado **`WHERE`**, operadores relacionales y lógicos, restricciones de validación numérica (`CHECK`) y consultas analíticas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_dibujo_digital` y la tabla `proyectos_dibujo` con tipos de datos precisos y validaciones de integridad.
- **dml/inserts.sql**: Inserción detallada de 8 registros realistas de trabajos de arte digital con diversos softwares, capas, tiempos y comisiones.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtros estrictos con `WHERE`, operadores `IN`, comparaciones numéricas, funciones de agregación (`COUNT`, `AVG`, `SUM`, `MAX`) y agrupaciones.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
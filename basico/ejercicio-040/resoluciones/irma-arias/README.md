# Módulo de Datos - Carreras Urbanas (Ejercicio 040)

Solución desarrollada en **MySQL** aplicando funciones de agregación avanzadas (`COUNT` y `SUM`), restricciones de validación `CHECK` y reportes analíticos financieros y de participación para eventos deportivos urbanos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_carreras_urbanas` y la tabla `participantes_carreras` con validaciones robustas.
- **dml/inserts.sql**: Inserción de 8 registros de corredores con diversas categorías de distancia, costos y estados de pago.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en el uso de `COUNT` y `SUM` para calcular totales de corredores, recaudaciones financieras, kilómetros acumulados y reportes agrupados.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
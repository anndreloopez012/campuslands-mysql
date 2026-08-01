# Módulo de Datos - Taller Mecánico de Motos (Ejercicio 035 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de la instrucción `SELECT`, cálculos derivados en consultas, restricciones estrictas (`CHECK`, `UNIQUE`) y reportes analíticos para un taller de reparación de motocicletas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `reparaciones_motos` con validaciones robustas para costos y estados operativos.
- **dml/inserts.sql**: Inserción de 8 registros de órdenes de servicio con propietarios, modelos, tipos de servicios y costos detallados de mano de obra y repuestos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en proyecciones financieras mediante columnas calculadas, filtrados por estado, agrupamientos y rankings por costo (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
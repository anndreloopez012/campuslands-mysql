# Módulo de Datos - Autos Hiperdeportivos (Ejercicio 036 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de la cláusula `WHERE`, operadores lógicos de filtrado, restricciones estrictas (`CHECK`, `UNIQUE`) y reportes analíticos para el mercado de vehículos hiperdeportivos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `autos_hiperdeportivos` con validaciones robustas para velocidades, precios y años de fabricación.
- **dml/inserts.sql**: Inserción de 8 registros de hiperdeportivos de marcas exclusivas con especificaciones técnicas detalladas y estados de disponibilidad.
- **dql/consultas.sql**: 5 consultas analíticas aplicando filtrados estrictos con `WHERE`, operadores relacionales (`>`), operadores lógicos (`AND`, `IN`, `!=`), funciones de agregación y límites de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
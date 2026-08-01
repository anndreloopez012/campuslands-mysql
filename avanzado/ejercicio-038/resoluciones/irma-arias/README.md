# Módulo de Datos - Fútbol Sala (Ejercicio 038 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de la instrucción de modificación de registros (`UPDATE`), restricciones estrictas (`CHECK`, `UNIQUE`) y consultas analíticas para una liga de fútbol sala.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `equipos_sala` con validaciones robustas para partidos, goles y puntos.
- **dml/inserts.sql**: Inserción de 8 registros de equipos y aplicación de sentencias `UPDATE` para actualizar estadísticas individuales y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas aplicando ordenamientos múltiples (`ORDER BY`), filtrados por estado, funciones de agregación y límites de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
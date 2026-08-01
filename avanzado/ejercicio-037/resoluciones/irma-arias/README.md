# Módulo de Datos - Liga de Fútbol (Ejercicio 037 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio avanzado de la cláusula `ORDER BY`, criterios de ordenamiento múltiple, columnas calculadas (diferencia de goles), restricciones estrictas (`CHECK`, `UNIQUE`) y reportes analíticos para una liga de fútbol profesional.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `equipos_liga` asegurando validaciones de integridad para partidos, puntos y goles.
- **dml/inserts.sql**: Inserción de 8 registros de equipos con estadísticas detalladas de rendimiento en el torneo.
- **dql/consultas.sql**: 5 consultas analíticas aplicando ordenamientos simples y compuestos (`ORDER BY`), columnas derivadas, funciones de agregación y límites de ranking (`LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
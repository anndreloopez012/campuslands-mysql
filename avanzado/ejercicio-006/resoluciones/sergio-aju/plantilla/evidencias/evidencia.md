# Resolución Ejercicio 006 - EXPLAIN (Autos Hiperdeportivos)

**Autor:** Sergio Miranda Ajú
**Fecha:** Julio 2026

## Descripción del Proyecto
Solución del módulo avanzado inicial. El objetivo es modelar una base de datos de hiperdeportivos y utilizar el comando `EXPLAIN` para analizar los planes de ejecución de MySQL y comprender el impacto de los índices.

## Decisiones Técnicas
- **Índices:** Se agregó un índice `idx_marca` en la columna `marca`. Esto permite comparar el resultado de `EXPLAIN` cuando MySQL hace un *Index Scan* (búsqueda optimizada) frente a un *Full Table Scan* (búsqueda secuencial) en columnas sin indexar como `caballos_fuerza`.
- **Estructura:** Se usó `DECIMAL` para las velocidades y precios garantizando precisión, e `INT` para los caballos de fuerza. El estado se controló mediante un `ENUM`.

## Ejecución
Ejecutar los scripts en este orden exacto:
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql` (Revisa la columna `type` y `possible_keys` en los resultados de los EXPLAIN).
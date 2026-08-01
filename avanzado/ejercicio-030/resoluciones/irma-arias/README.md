# Módulo de Datos - Equipo de Streaming (Ejercicio 030 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de relaciones simples entre tablas (`FOREIGN KEY`), restricciones de integridad (`CHECK`), cruces de datos con `JOIN` y consultas analíticas para un equipo de streaming.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y las tablas relacionadas `categorias_streaming` y `equipos_streaming`, aplicando restricciones estrictas para precios y stock.
- **dml/inserts.sql**: Inserción de registros relacionales distribuidos en categorías técnicas y 8 equipos especializados para transmisiones.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en uniones relacionales (`JOIN`), filtros por estado operativo, agrupamientos por categoría y métricas financieras de inventario.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
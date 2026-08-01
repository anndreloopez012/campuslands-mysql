# Módulo de Datos - Garaje de Motos (Ejercicio 034 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la correcta aplicación de inserciones estructuradas (`INSERT`), restricciones de integridad (`CHECK`, `UNIQUE`) y consultas analíticas para un garaje de motocicletas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `motos_garaje` utilizando tipos de datos precisos para placas, cilindradas, tarifas y fechas.
- **dml/inserts.sql**: Inserción de 8 registros de motocicletas con marcas variadas, modelos, cilindradas, costos y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en ordenamientos por tarifas, filtrados por estado, agrupamientos y métricas financieras de inventario operativo.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
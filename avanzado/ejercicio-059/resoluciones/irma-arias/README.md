# Ejercicio 059 - Fechas Básicas para Mercado de Accesorios

## Descripción
Módulo relacional en MySQL optimizado para la gestión de fechas de ingreso, consultas temporales, control de stock y reportes financieros en un mercado de accesorios.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM, DATE).
2. dml/inserts.sql - Inserción de 8 registros base con fechas variadas para validar rangos y consultas cronológicas.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de negocio mediante filtros de fecha y agregaciones.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para asegurar que tanto los precios en USD como el stock mantengan valores numéricos positivos válidos.
- Se utilizó un campo DATE para registrar con precisión el momento de ingreso de cada accesorio al mercado.

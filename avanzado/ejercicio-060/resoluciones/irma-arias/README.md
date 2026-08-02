# Ejercicio 060 - Relaciones Simples para Equipo de Streaming

## Descripción
Módulo relacional en MySQL optimizado para la aplicación de relaciones simples entre tablas (FOREIGN KEY), cruces de datos con JOIN, validaciones con restricciones y reportes analíticos para una tienda de equipos de streaming.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de las tablas relacionales marcas_streaming y equipos_streaming con restricciones de integridad y clave foránea.
2. dml/inserts.sql - Inserción de registros relacionales para marcas y dispositivos de transmisión.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores corporativos mediante JOIN y funciones de agregación.
## Decisiones Técnicas
- Se implementó una relación uno a muchos (1:N) donde cada equipo de streaming pertenece estrictamente a una marca registrada.
- Se utilizó un campo ENUM para gestionar el estado comercial del inventario y restricciones CHECK para garantizar precios positivos.

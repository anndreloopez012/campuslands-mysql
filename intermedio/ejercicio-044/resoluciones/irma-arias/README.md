# Ejercicio 044 - Vistas Simples para Saga de Ciencia Ficción

## Descripción
Módulo relacional en MySQL enfocado en el diseño y uso de **Vistas Simples (CREATE VIEW)**, estructurando información sobre sistemas estelares, facciones galácticas, películas de ciencia ficción, presupuestos, estados y calificaciones críticas.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, foráneas con eliminación en cascada, restricciones CHECK para presupuestos y años, y definición de vistas simples (w_peliculas_canon y w_presupuesto_alto).
2. dml/inserts.sql - Inserción de registros relacionales coherentes y limpios que alimentan las tablas y permiten evaluar el comportamiento de las vistas.
3. dql/consultas.sql - Consultas orientadas a consultar directamente las vistas creadas, realizar agrupaciones estadísticas (GROUP BY), funciones de agregación (AVG, MAX, COUNT) y reportes de clasificación de películas (LIMIT).
## Decisiones Técnicas
- Se crearon vistas simples para encapsular consultas complejas con múltiples uniones (JOIN) y filtros frecuentes (como el filtrado por estado canon o presupuestos elevados), facilitando la lectura para otros desarrolladores.
- Se aplicaron tipos de datos numéricos con precisión decimal (DECIMAL(5,2)) para el manejo adecuado de presupuestos en millones.

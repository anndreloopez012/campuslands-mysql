# Ejercicio 045 - Relaciones Simples para Biblioteca Gamer

## Descripción
Módulo relacional en MySQL diseñado para administrar una biblioteca de videojuegos vinculada a sus respectivas plataformas, permitiendo consultas analíticas y reportes de estado.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de tablas (plataformas, ideojuegos) con relaciones de llave foránea y restricciones.
2. dml/inserts.sql - Inserción de datos maestros y 8 registros relacionales de prueba.
3. dql/consultas.sql - Consultas multitabla con JOIN, funciones de agregación y reportes de negocio.

## Decisiones Técnicas
- Se estableció una relación de uno a muchos (1:N) donde una plataforma puede tener múltiples videojuegos.
- Se implementaron restricciones CHECK para asegurar precios y calificaciones válidas.

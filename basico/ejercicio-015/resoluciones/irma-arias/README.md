# Ejercicio 015 - Relaciones Simples para Biblioteca Gamer

## Descripción
Módulo de datos diseñado para la gestión de una biblioteca de videojuegos, aplicando relaciones relacionales (`FOREIGN KEY`) entre las entidades `plataformas` y `videojuegos`, junto con validaciones estrictas y consultas analíticas mediante `JOIN`.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró una relación de uno a muchos utilizando una clave foránea (`plataforma_id`) para conectar cada videojuego con su respectiva plataforma de hardware.
* Se implementaron consultas multitabla con `JOIN`, funciones de agregación (`SUM`, `COUNT`) y filtros por categorías de juego.
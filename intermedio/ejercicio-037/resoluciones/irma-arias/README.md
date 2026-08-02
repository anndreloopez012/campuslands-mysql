# Ejercicio 037 - Normalización 2FN para Autos Hiperdeportivos

## Descripción
Módulo relacional en MySQL enfocado en cumplir rigurosamente con la **Segunda Forma Normal (2FN)**, asegurando que la base de datos se encuentre en 1FN y que todos los atributos no clave dependan plenamente de la llave primaria, evitando redundancias en fabricantes y características de motor.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional normalizado en 2FN con tablas maestras independientes (abricantes, caracteristicas_motor) y llaves foráneas.
2. dml/inserts.sql - Inserción de registros relacionales coherentes y limpios que alimentan las tablas normalizadas.
3. dql/consultas.sql - Consultas orientadas a explotar las uniones relacionales (JOIN), agrupaciones con GROUP BY y funciones estadísticas.
## Decisiones Técnicas
- Se separaron los atributos descriptivos del motor y del fabricante en entidades independientes para eliminar dependencias parciales y garantizar la integridad referencial.
- Se aplicaron restricciones CHECK para validar rangos lógicos en potencias, velocidades y precios de mercado.

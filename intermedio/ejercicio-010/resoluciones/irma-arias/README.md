# Ejercicio 010 - ÚNICO para Carreras Urbanas

## Descripción
Módulo relacional en MySQL enfocado en la aplicación de restricciones UNIQUE para garantizar la unicidad de datos críticos (como correos electrónicos y números de dorsal de competencia), integrando relaciones con llaves foráneas y reportes analíticos para eventos de carreras urbanas.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con restricciones UNIQUE, FOREIGN KEY, CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes con dorsales y correos electrónicos únicos.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de reportes de corredores y categorías mediante JOIN y funciones de agregación.
## Decisiones Técnicas
- Se implementó la restricción UNIQUE en las columnas email y dorsal de la tabla corredores_urbanos para evitar duplicidad de registros en inscripciones deportivas.
- Se utilizó una relación 1:N con la tabla categorias_carrera mediante FOREIGN KEY para estructurar las distancias de competencia.

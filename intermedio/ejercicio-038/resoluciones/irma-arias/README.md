# Ejercicio 038 - Normalización 3FN para Fútbol Sala

## Descripción
Módulo relacional en MySQL enfocado en cumplir rigurosamente con la **Tercera Forma Normal (3FN)**, asegurando que la base de datos se encuentre en 2FN y que no existan dependencias transitivas entre atributos no clave, estructurando tablas independientes para sedes/ciudades, posiciones tácticas, equipos y jugadores de fútbol sala.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional normalizado en 3FN mediante la separación de entidades maestras (sedes_ciudades, posiciones_juego) y el uso de llaves foráneas y restricciones CHECK.
2. dml/inserts.sql - Inserción de registros relacionales coherentes y limpios que simulan una competición profesional de fútbol sala.
3. dql/consultas.sql - Consultas orientadas a explotar uniones relacionales múltiples (JOIN), agrupaciones con GROUP BY, funciones de agregación y reportes estadísticos de rendimiento.
## Decisiones Técnicas
- Se eliminaron dependencias transitivas aislando las ciudades/sedes de los equipos y las descripciones tácticas de las posiciones de los jugadores.
- Se aplicaron restricciones CHECK para validar dominios numéricos en los dorsales de los jugadores y tipos enumerados para sus estados operativos.

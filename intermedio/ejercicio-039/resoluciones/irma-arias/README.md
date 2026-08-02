# Ejercicio 039 - Llave Extranjera para Kickboxing

## Descripción
Módulo relacional en MySQL enfocado en practicar la implementación y el uso correcto de **Llaves Foráneas (FOREIGN KEY)**, estructurando tablas maestras para gimnasios y categorías de peso, vinculadas a la entidad principal de peleadores de kickboxing con reglas de integridad referencial.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, llaves foráneas con eliminación en cascada (ON DELETE CASCADE), restricciones CHECK para edades y tipos enumerados (ENUM) para estados.
2. dml/inserts.sql - Inserción de registros relacionales coherentes que simulan el ecosistema competitivo del kickboxing profesional.
3. dql/consultas.sql - Consultas orientadas a explotar uniones relacionales múltiples (JOIN), agrupaciones estadísticas con GROUP BY y reportes de rendimiento analítico.
## Decisiones Técnicas
- Se establecieron relaciones de clave foránea estipulando dependencia directa entre los atletas y sus respectivos centros de entrenamiento y categorías de peso reglamentarias.
- Se implementaron restricciones CHECK para asegurar dominios numéricos lógicos en las edades de los peleadores.

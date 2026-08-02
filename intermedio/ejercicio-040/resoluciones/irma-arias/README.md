# Ejercicio 040 - ÚNICO para Carreras Urbanas

## Descripción
Módulo relacional en MySQL enfocado en practicar la aplicación de restricciones de unicidad (UNIQUE), garantizando que atributos comerciales críticos como los números de dorsal de los atletas, sus correos electrónicos de contacto y los nombres de las categorías de carrera no admitan duplicados en la base de datos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, llaves foráneas y restricciones UNIQUE explícitas (uk_correo_electronico, uk_numero_dorsal, uk_nombre_categoria).
2. dml/inserts.sql - Inserción de registros relacionales limpios y verificables que cumplen con los índices únicos establecidos.
3. dql/consultas.sql - Consultas orientadas a explotar uniones relacionales (JOIN), agrupaciones estadísticas con GROUP BY, filtros de rendimiento y reportes de clasificación.
## Decisiones Técnicas
- Se aplicaron restricciones UNIQUE para asegurar que ningún corredor pueda registrarse dos veces con el mismo correo ni se repita un número de dorsal dentro del evento.
- Se estructuró un campo tipo ENUM para controlar de manera estricta los estados de participación de cada atleta.

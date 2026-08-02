# Ejercicio 009 - Llave Extranjera para Kickboxing

## Descripción
Módulo relacional en MySQL optimizado para la práctica de llaves foráneas (FOREIGN KEY), garantizando la integridad referencial entre las categorías de peso (categorias_peso) y los atletas (luchadores_kickboxing) en una organización de kickboxing.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con clave primaria, foránea, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para categorías y luchadores profesionales.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores deportivos mediante JOIN y funciones de agregación.
## Decisiones Técnicas
- Se implementó una relación estricta 1:N utilizando FOREIGN KEY con eliminación en cascada para asociar cada luchador con su respectiva categoría de peso reglamentaria.
- Se utilizaron restricciones CHECK para validar que los límites de peso sean estrictamente positivos.

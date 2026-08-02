# Ejercicio 054 - BORRAR Controlado para Soldadura

## Descripción
Módulo relacional en MySQL optimizado para practicar operaciones seguras de eliminación de registros (DELETE controlado), gestión de calidad y reportes analíticos en proyectos de soldadura industrial.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos y validaciones con restricciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros base y ejecución de sentencias DELETE controladas para depurar registros no conformes.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores de negocio sobre los datos depurados.
## Decisiones Técnicas
- Se implementaron restricciones CHECK para garantizar que tanto el amperaje como el costo mantengan valores numéricos positivos lógicos.
- Se utilizó un campo ENUM para manejar de forma estricta el estado operativo de cada cordón de soldadura.

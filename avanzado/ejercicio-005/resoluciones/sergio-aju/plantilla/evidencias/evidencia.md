# Módulo de Datos: Índices para Taller Mecánico de Motos

Solución en **MySQL** orientada a la optimización del rendimiento mediante la creación de **índices (`INDEX`)** en columnas clave dentro de un sistema de gestión para un taller mecánico de motocicletas.

## Estructura
- `ddl/schema.sql`: Creación de la base de datos con las tablas `mecanicos` y `reparaciones`, aplicando índices en campos de búsqueda frecuente (`costo` y `id_mecanico`).
- `dml/inserts.sql`: Inserción de 4 mecánicos y 10 registros de reparaciones para verificar la eficiencia de las consultas indexadas.
- `dql/consultas.sql`: Consultas optimizadas con filtros, ordenamientos, uniones y funciones de agregación.

## Ejecución
1. `SOURCE ddl/schema.sql;`
2. `SOURCE dml/inserts.sql;`
3. `SOURCE dql/consultas.sql;`
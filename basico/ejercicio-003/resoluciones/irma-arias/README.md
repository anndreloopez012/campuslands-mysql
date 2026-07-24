
# Ejercicio 003 - PRIMARY KEY para inventario de skins shooter

## Descripción
Módulo de base de datos relacional enfocado en la gestión de un inventario de skins de un videojuego tipo shooter, aplicando el uso estricto de `PRIMARY KEY`, restricciones de validación y tipos de datos precisos en MySQL.

## Decisiones Técnicas
- **Clave Primaria:** Se utiliza `id_skin INT UNSIGNED AUTO_INCREMENT PRIMARY KEY` como identificador único estricto para cada registro del inventario.
- **Tipos de datos y Restricciones:** Se empleó `DECIMAL(10,2)` para manejar los precios con exactitud, columnas `ENUM` para acotar los valores permitidos de rareza y desgaste físico, y un campo `BOOLEAN` para verificar la disponibilidad de comercio.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
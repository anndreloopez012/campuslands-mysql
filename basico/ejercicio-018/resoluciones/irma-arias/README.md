# Ejercicio 018 - PRIMARY KEY para Viajes y Turismo

## Descripción
Módulo de datos diseñado para la administración de catálogos y paquetes turísticos, implementando de forma estricta una clave primaria autoincremental (`PRIMARY KEY AUTO_INCREMENT`), restricciones de integridad de datos y consultas analíticas.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estableció la columna `id` como `PRIMARY KEY AUTO_INCREMENT` para garantizar la unicidad de cada registro turístico de forma automática.
* Se utilizaron tipos numéricos precisos (`DECIMAL` para costos, `INT` para duración y cupos) junto con restricciones `CHECK` y `DEFAULT`.
# Ejercicio 048 - Clave Primaria para Viajes y Turismo

## Descripción
Módulo relacional en MySQL optimizado para la gestión de paquetes turísticos, control de destinos, precios y disponibilidad mediante el uso de llaves primarias y restricciones.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la estructura de la base de datos, asignación de PRIMARY KEY y validaciones (CHECK, ENUM).
2. dml/inserts.sql - Inserción de 8 registros de prueba variados para destinos internacionales.
3. dql/consultas.sql - Consultas analíticas, reportes por país y métricas de negocio.

## Decisiones Técnicas
- Se implementó un campo id_paquete como PRIMARY KEY con autoincrementable para garantizar la unicidad de cada registro.
- Se utilizaron restricciones CHECK para validar que tanto la duración como el precio mantengan valores positivos coherentes.

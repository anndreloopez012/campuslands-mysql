# Ejercicio 046 - INNER JOIN para Restaurante de Comida Urbana

## Descripción
Módulo relacional en MySQL enfocado en el uso avanzado de **INNER JOIN**, estructurando información sobre categorías de menús callejeros, sucursales de food parks, platillos urbanos, precios en USD, calificaciones de clientes y estados de disponibilidad.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, llaves foráneas con eliminación en cascada, restricciones CHECK para precios y calificaciones, junto con campos ENUM para estados de platillos.
2. dml/inserts.sql - Carga de registros limpios y coherentes que permiten relacionar eficazmente las tablas mediante claves foráneas.
3. dql/consultas.sql - Consultas orientadas a explotar uniones estrictas con INNER JOIN, funciones de agregación (SUM, AVG, MAX, COUNT), agrupamientos y reportes analíticos de negocio (LIMIT).
## Decisiones Técnicas
- Se implementaron uniones exclusivas mediante INNER JOIN para asegurar que cada reporte devuelva registros estrictamente correlacionados entre platillos, categorías y sucursales.
- Se utilizaron tipos de datos monetarios con precisión decimal (DECIMAL(5,2)) para el control exacto de los costos de los platillos de comida urbana.

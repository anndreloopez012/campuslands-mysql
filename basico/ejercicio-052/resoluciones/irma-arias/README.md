# Módulo de Datos - Animación 3D (Ejercicio 052)

Solución desarrollada en **MySQL** enfocada en el dominio y práctica avanzada de la cláusula de ordenamiento **`ORDER BY`**, ordenamientos multi-columna, restricciones de validación numérica (`CHECK`) y reportes analíticos agrupados.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_animacion_3d` y la tabla `proyectos_animacion` con tipos de datos precisos y validaciones de integridad.
- **dml/inserts.sql**: Inserción detallada de 8 registros realistas de escenas y proyectos de animación 3D con diversos softwares, fotogramas, tiempos de render, complejidades y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en la cláusula `ORDER BY` (ascendente, descendente, multi-columna), combinadas con filtros `WHERE` y funciones de agregación agrupadas (`GROUP BY`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
# Ejercicio 022 - ORDER BY para Animación 3D

## Descripción
Módulo de datos diseñado para la gestión y optimización de proyectos de animación y renderizado 3D, aplicando de forma profesional la cláusula `ORDER BY` con múltiples criterios, funciones de agregación y restricciones de integridad.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla `proyectos_animacion` utilizando tipos de datos precisos (`DECIMAL` para horas de render y densidad de polígonos).
* Se diseñaron consultas para analizar el rendimiento del hardware, optimización geométrica y tiempos de producción en distintos softwares 3D.
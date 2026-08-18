# Resolución Ejercicio 007 - Vistas Avanzadas (Liga de Fútbol)

**Autor:** Sergio Miranda Ajú
**Fecha:** Julio 2026

## Descripción del Proyecto
Resolución del módulo avanzado para la creación y gestión de **vistas avanzadas** en MySQL. Se modeló una tabla de estadísticas para una liga de fútbol, automatizando el cálculo de puntos y la diferencia de goles mediante consultas lógicas encapsuladas.

## Decisiones Técnicas
- **Encapsulamiento de Lógica:** La vista `vista_tabla_posiciones` calcula de forma dinámica los puntos totales bajo la normativa estándar de fútbol (3 puntos por victoria, 1 por empate) y la diferencia de goles, evitando almacenar datos redundantes que puedan desincronizarse.
- **Restricciones:** Se integró un campo `ENUM` para manejar los estados del equipo (`activo`, `descendido`, `sancionado`), facilitando la segmentación en reportes de rendimiento y zonas críticas de la tabla.

## Ejecución
Ejecutar los scripts en el siguiente orden estricto:
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`
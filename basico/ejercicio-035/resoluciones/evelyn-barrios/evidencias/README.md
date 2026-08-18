# Solución Ejercicio 035 - Taller Mecánico de Motos

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para un taller mecánico de motos. El objetivo principal era practicar la sentencia `SELECT` en un escenario realista, extrayendo información útil para la gestión del taller.

La tabla `motos` es la entidad central. Se ha incluido una columna `estado_reparacion` de tipo `ENUM` para asegurar que cada moto tenga un estado válido ('Pendiente', 'En Proceso', 'Completado', 'Entregado'). Esto permite realizar filtros precisos y generar reportes consistentes sobre el flujo de trabajo.

## Objetivo Cumplido

El objetivo de practicar `SELECT` se ha cumplido mediante la creación de 5 consultas en `dql/consultas.sql`. Estas consultas demuestran cómo utilizar filtros (`WHERE`), agrupaciones (`GROUP BY`), funciones de agregación (`COUNT`, `AVG`) y ordenamientos (`ORDER BY`) para obtener análisis relevantes sobre el estado de las reparaciones, costos y carga de trabajo del taller.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `taller_motos` y la tabla `motos`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 registros de motos de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes sobre el estado del taller.

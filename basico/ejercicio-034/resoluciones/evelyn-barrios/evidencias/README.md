# Solución Ejercicio 034 - Garaje de Motos

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para gestionar las motocicletas que ingresan a un garaje para servicio. El objetivo principal era practicar el uso de la sentencia `INSERT` en un escenario realista.

La tabla `motos` es la entidad central. Se ha incluido una columna `estado_servicio` de tipo `ENUM` como restricción principal. Esto asegura que cada moto tenga un estado válido ('Pendiente', 'En Proceso', 'Completado', 'Entregado'), lo que facilita la gestión del flujo de trabajo y la generación de reportes precisos.

## Objetivo Cumplido

El objetivo de practicar `INSERT` se ha cumplido mediante la creación de un script `dml/inserts.sql` que añade 8 registros coherentes y variados. Las consultas en `dql/consultas.sql` demuestran cómo se pueden analizar estos datos para responder a preguntas de negocio, como la carga de trabajo actual o los ingresos por reparaciones.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `garaje_motos` y la tabla `motos`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 motocicletas de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes sobre el estado del garaje.
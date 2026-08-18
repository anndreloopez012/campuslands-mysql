# Solución Ejercicio 028 - Academia Tech

## Contexto de la Solución

Para este ejercicio, se ha diseñado una base de datos para una academia tecnológica, con el objetivo de gestionar la información de sus estudiantes. La entidad principal es la tabla `estudiantes`, que almacena datos personales, académicos y de estado.

La decisión de diseño clave fue la implementación de un campo `estado_inscripcion` de tipo `ENUM`. Esta restricción asegura que cada estudiante solo pueda tener uno de los estados predefinidos ('Activo', 'Pausado', 'Graduado', 'Retirado'), lo cual es fundamental para realizar filtros precisos y generar reportes consistentes.

## Objetivo Cumplido

Los scripts SQL proporcionan una solución completa y ejecutable. Las consultas en el archivo `dql/consultas.sql` demuestran cómo aplicar filtros por estado para responder preguntas de negocio, como identificar a los estudiantes con mejor rendimiento, calcular promedios por segmento o generar listas para el equipo de retención.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `academia_tech` y la tabla `estudiantes`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 registros de estudiantes.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis y reportes sobre la base de estudiantes.
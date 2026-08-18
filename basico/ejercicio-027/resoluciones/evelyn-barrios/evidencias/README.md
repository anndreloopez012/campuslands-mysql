# Solución Ejercicio 027 - Videojuego de Aventura

## Contexto de la Solución

Para este ejercicio, se ha modelado una entidad `heroes` para un videojuego de acción y aventura. El objetivo es almacenar los atributos principales de los personajes, como su clase, habilidades, poder y estado actual.

La tabla `heroes` utiliza un campo `clase` y `estado` de tipo `ENUM`. Esto asegura que los personajes se creen con roles predefinidos y que su disponibilidad sea fácil de gestionar, garantizando la integridad de los datos para las mecánicas del juego.

## Objetivo Cumplido

Los scripts SQL demuestran un modelado de entidad coherente y funcional. Las consultas DQL están diseñadas para responder preguntas típicas en la gestión de un videojuego, como el balance de clases, el ranking de los héroes más poderosos o la ubicación y estado de los personajes.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos `aventura_juego` y la tabla `heroes`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 héroes de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes análisis sobre los personajes del juego.

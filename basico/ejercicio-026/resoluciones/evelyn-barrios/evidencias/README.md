# Solución Ejercicio 026 - Videojuego RPG

## Contexto de la Solución

Para este ejercicio, se ha creado una base de datos llamada `rpg_game` que contiene una tabla `personajes`. El objetivo es almacenar información clave de los personajes de un videojuego de rol, como su nombre, clase, nivel y atributos de combate.

La decisión de diseño más importante fue aplicar una restricción `ENUM` a la columna `clase`. Esto asegura que solo se puedan crear personajes con clases predefinidas ('Guerrero', 'Mago', 'Arquero', 'Pícaro'), manteniendo la consistencia de los datos y cumpliendo con el requisito de validación del ejercicio.

## Objetivo Cumplido

Los scripts SQL demuestran un flujo de trabajo completo:
1.  **DDL**: Se define una estructura de tabla clara y con restricciones.
2.  **DML**: Se insertan datos coherentes que permiten realizar análisis significativos.
3.  **DQL**: Se escriben consultas que responden a preguntas de negocio relevantes para un videojuego, como el balance de clases o la identificación de los jugadores más poderosos.

## Cómo Ejecutar la Solución

Para verificar la solución, ejecuta los scripts en el siguiente orden desde un cliente MySQL:

1.  **Crear la estructura:**
    Ejecuta el contenido de `ddl/schema.sql` para crear la base de datos y la tabla `personajes`.
2.  **Insertar los datos:**
    Ejecuta el contenido de `dml/inserts.sql` para poblar la tabla con 8 personajes de ejemplo.
3.  **Realizar las consultas:**
    Ejecuta el contenido de `dql/consultas.sql` para obtener diferentes reportes y análisis sobre los personajes del juego.
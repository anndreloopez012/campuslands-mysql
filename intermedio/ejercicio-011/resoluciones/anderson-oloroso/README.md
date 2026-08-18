# ✨ Solución ejercicio intermedio: 11

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `jugadores_pingpong`, diseñada para almacenar información de jugadores de pingpong y validar que los datos registrados cumplan determinadas condiciones.

La tabla cuenta con los siguientes campos:

- jugador_id
- nombre_jugador
- nacionalidad
- edad
- ranking
- partidos_ganados
- partidos_perdidos

*El campo `jugador_id` está configurado como PK y como `AUTO_INCREMENT`, por lo que identifica de manera única a cada jugador y su valor será asignado automáticamente por MySQL.*

### Aplicación de CHECK ✅

Se utilizaron restricciones `CHECK` para validar los valores almacenados en la tabla.

Las reglas aplicadas fueron:

- `edad` debe encontrarse entre `10` y `70`.
- `ranking` debe ser mayor que `0`.
- `partidos_ganados` debe ser mayor o igual a `0`.
- `partidos_perdidos` debe ser mayor o igual a `0`.

*Estas restricciones permiten evitar valores inválidos, como edades negativas, rankings iguales a cero o cantidades negativas de partidos.*

### Creación de registros 📝

Se insertaron 15 registros con los siguientes campos:

- nombre_jugador
- nacionalidad
- edad
- ranking
- partidos_ganados
- partidos_perdidos

*El campo `jugador_id` no se incluyó directamente en los registros porque está configurado como PK y `AUTO_INCREMENT`. MySQL asignará automáticamente un identificador único a cada jugador.*

*Todos los registros utilizan valores que cumplen las condiciones establecidas mediante las restricciones `CHECK`.*

### Consultas 🔎

Las consultas que se realizaron fueron:

- Seleccionar jugadores con edades entre `18` y `30` años.
- Seleccionar jugadores cuyo ranking sea menor o igual a `30`.
- Seleccionar jugadores que tengan más partidos ganados que perdidos.
- Contar la cantidad de jugadores registrados por nacionalidad.
- Seleccionar jugadores mayores o iguales a `25` años que tengan al menos `20` partidos ganados y como máximo `20` partidos perdidos.

*Las consultas permiten comprobar y analizar los datos almacenados utilizando filtros, condiciones múltiples, agrupaciones y ordenamiento.*

### Explicación final 📝

*La solución permite practicar el uso de restricciones `CHECK` en MySQL para controlar la validez de los datos desde la estructura de la base de datos.*

*Las restricciones establecidas garantizan que los valores de edad, ranking y estadísticas de partidos se encuentren dentro de rangos lógicos para la temática de pingpong.*

*Además, se incluyeron 15 registros válidos y cinco consultas que permiten verificar diferentes condiciones sobre los jugadores mediante `WHERE`, `BETWEEN`, `COUNT`, `GROUP BY` y operadores lógicos.*
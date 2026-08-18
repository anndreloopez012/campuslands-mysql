# ✨ Solución ejercicio intermedio: 07

## _Henrik Anderson Oloroso García 💯_

### Creación de las tablas 📑

Para este ejercicio se crearon tres tablas con el objetivo de representar una liga de fútbol y aplicar los principios de la Segunda Forma Normal (2FN).

La primera tabla es `equipos_futbol`, que cuenta con los siguientes campos:

- equipo_id
- nombre_equipo
- ciudad
- estadio

La segunda tabla es `jugadores_futbol`, que cuenta con los siguientes campos:

- jugador_id
- nombre_jugador
- posicion
- nacionalidad

La tercera tabla es `jugadores_equipos`, que funciona como tabla intermedia y cuenta con los siguientes campos:

- jugador_id
- equipo_id
- numero_camiseta
- temporada

*Los campos `equipo_id` y `jugador_id` de sus respectivas tablas están configurados como PK y como `AUTO_INCREMENT`, por lo que identifican de manera única a cada equipo y jugador.*

*La tabla `jugadores_equipos` utiliza una clave primaria compuesta por `jugador_id` y `equipo_id`. Estos campos también funcionan como FK y permiten establecer la relación entre jugadores y equipos.*

### Aplicación de la normalización 2FN 🔢

La estructura fue diseñada aplicando los principios de la Segunda Forma Normal (2FN).

La tabla `jugadores_equipos` posee una clave primaria compuesta:

- jugador_id
- equipo_id

Los atributos adicionales de esta tabla, como `numero_camiseta` y `temporada`, dependen de la combinación de jugador y equipo, evitando dependencias parciales.

Los datos propios de cada jugador se almacenaron exclusivamente en `jugadores_futbol`:

- nombre_jugador
- posicion
- nacionalidad

Los datos propios de cada equipo se almacenaron exclusivamente en `equipos_futbol`:

- nombre_equipo
- ciudad
- estadio

*De esta manera se evita repetir información de jugadores y equipos dentro de la tabla intermedia.*

### Creación de registros 📝

Se insertaron 15 registros en `equipos_futbol` con los siguientes campos:

- nombre_equipo
- ciudad
- estadio

También se insertaron 15 registros en `jugadores_futbol` con los siguientes campos:

- nombre_jugador
- posicion
- nacionalidad

Finalmente, se insertaron 15 registros en `jugadores_equipos` con los siguientes campos:

- jugador_id
- equipo_id
- numero_camiseta
- temporada

*Los identificadores `equipo_id` y `jugador_id` de las tablas principales no se incluyeron directamente porque están configurados como `AUTO_INCREMENT`.*

*Los identificadores generados automáticamente se utilizaron posteriormente como FK en la tabla `jugadores_equipos` para establecer las relaciones correspondientes.*

### Relaciones 🔗

La relación entre las tablas se estableció de la siguiente manera:

- `equipos_futbol` → `jugadores_equipos`
- `jugadores_futbol` → `jugadores_equipos`

La tabla `jugadores_equipos` funciona como tabla intermedia y permite relacionar jugadores con equipos.

*La utilización de una tabla intermedia evita almacenar múltiples jugadores dentro de una misma columna y mantiene los datos organizados de acuerdo con los principios de normalización.*

### Consultas ✅

Las consultas que se realizaron fueron:

- Mostrar los jugadores junto con el equipo al que pertenecen, su posición, nacionalidad, número de camiseta y temporada.
- Contar la cantidad de jugadores registrados en cada equipo utilizando `COUNT` y `GROUP BY`.
- Seleccionar únicamente los jugadores que ocupan la posición de `Delantero`.
- Seleccionar los jugadores colombianos junto con el equipo al que pertenecen.
- Mostrar los jugadores cuyo número de camiseta sea menor o igual a `10`.

*Las consultas utilizan `INNER JOIN` para combinar la información de las tres tablas y demostrar cómo se puede consultar información normalizada sin duplicar los datos originales.*

### Explicación final 📝

*La solución permite practicar la Segunda Forma Normal (2FN) mediante la separación de los datos propios de jugadores, equipos y su relación dentro de una tabla intermedia.*

*La información de cada jugador y cada equipo se almacena una sola vez, mientras que `jugadores_equipos` contiene únicamente los datos relacionados con la participación del jugador en un equipo.*

*La estructura evita dependencias parciales en la tabla con clave compuesta y permite realizar consultas mediante `INNER JOIN`, `COUNT`, `GROUP BY` y `WHERE` de manera organizada.*
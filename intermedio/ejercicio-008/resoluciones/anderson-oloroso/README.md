# ✨ Solución ejercicio intermedio: 08

## _Henrik Anderson Oloroso García 💯_

### Creación de las tablas 📑

Para este ejercicio se crearon cinco tablas relacionadas con el objetivo de representar la estructura de una liga de fútbol sala aplicando los principios de la Tercera Forma Normal (3FN).

Las tablas creadas son:

#### `equipos_futbol_sala`

Cuenta con los siguientes campos:

- equipo_id
- nombre_equipo
- ciudad

#### `posiciones_futbol_sala`

Cuenta con los siguientes campos:

- posicion_id
- nombre_posicion

#### `jugadores_futbol_sala`

Cuenta con los siguientes campos:

- jugador_id
- nombre_jugador
- nacionalidad
- posicion_id
- equipo_id

#### `temporadas_futbol_sala`

Cuenta con los siguientes campos:

- temporada_id
- nombre_temporada
- anio_inicio
- anio_fin

#### `participaciones_futbol_sala`

Cuenta con los siguientes campos:

- participacion_id
- jugador_id
- temporada_id
- numero_camiseta
- goles
- asistencias

*Los campos `equipo_id`, `posicion_id`, `jugador_id` y `temporada_id` permiten establecer las relaciones entre las diferentes entidades mediante claves foráneas.*

### Aplicación de la normalización 3FN 🔢

La estructura fue diseñada aplicando los principios de la Tercera Forma Normal (3FN).

Los datos de cada entidad se almacenan únicamente en la tabla que corresponde:

- La información de los equipos se almacena en `equipos_futbol_sala`.
- La información de las posiciones se almacena en `posiciones_futbol_sala`.
- La información de los jugadores se almacena en `jugadores_futbol_sala`.
- La información de las temporadas se almacena en `temporadas_futbol_sala`.
- La información estadística de cada participación se almacena en `participaciones_futbol_sala`.

*Se evita almacenar directamente nombres de equipos o nombres de posiciones dentro de la tabla de estadísticas. En su lugar, se utilizan claves foráneas para referenciar las entidades correspondientes.*

*De esta manera, los atributos no clave dependen directamente de la clave primaria de su propia tabla y se reducen las dependencias transitivas y la duplicación de información.*

### Creación de registros 📝

Se insertaron:

- 15 equipos.
- 15 posiciones.
- 15 jugadores.
- 5 temporadas.
- 15 participaciones.

En `equipos_futbol_sala` se utilizaron los campos:

- nombre_equipo
- ciudad

En `posiciones_futbol_sala` se utilizó:

- nombre_posicion

En `jugadores_futbol_sala` se utilizaron:

- nombre_jugador
- nacionalidad
- posicion_id
- equipo_id

En `temporadas_futbol_sala` se utilizaron:

- nombre_temporada
- anio_inicio
- anio_fin

En `participaciones_futbol_sala` se utilizaron:

- jugador_id
- temporada_id
- numero_camiseta
- goles
- asistencias

*Los identificadores configurados como PK y `AUTO_INCREMENT` no se incluyeron directamente en los registros de las tablas principales, ya que MySQL los genera automáticamente.*

### Relaciones 🔗

Las relaciones principales del modelo son:

- `equipos_futbol_sala` → `jugadores_futbol_sala`
- `posiciones_futbol_sala` → `jugadores_futbol_sala`
- `jugadores_futbol_sala` → `participaciones_futbol_sala`
- `temporadas_futbol_sala` → `participaciones_futbol_sala`

*Las claves foráneas permiten conectar la información sin duplicar los datos descriptivos de cada entidad.*

### Consultas ✅

Las consultas que se realizaron fueron:

- Mostrar cada jugador junto con su posición, equipo y ciudad.
- Mostrar las participaciones cuyos jugadores registraron al menos 10 goles.
- Contar cuántos jugadores existen en cada posición utilizando `COUNT` y `GROUP BY`.
- Calcular los goles y asistencias totales por temporada utilizando `SUM` y `GROUP BY`.
- Seleccionar jugadores que hayan conseguido más de 10 goles y más de 7 asistencias durante una temporada.

*Las consultas utilizan `INNER JOIN` y `LEFT JOIN` para relacionar las diferentes entidades del modelo normalizado y obtener información completa sin duplicar datos.*

### Explicación final 📝

*La solución permite practicar la Tercera Forma Normal (3FN) mediante la separación de entidades y la eliminación de dependencias transitivas innecesarias.*

*La información de equipos, posiciones, jugadores, temporadas y estadísticas se encuentra distribuida en tablas independientes y relacionadas mediante claves primarias y foráneas.*

*Esta estructura facilita el mantenimiento de los datos, evita la duplicación de información y permite realizar consultas complejas utilizando `JOIN`, `GROUP BY`, `COUNT`, `SUM`, `WHERE` y `ORDER BY`.*
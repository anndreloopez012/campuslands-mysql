# ✨ Solución ejercicio avanzado: 07

## _Henrik Anderson Oloroso García 💯_

### Creación de las tablas 📑

Para este ejercicio se crearon dos tablas relacionadas con la temática de una liga de fútbol:

- `equipos_futbol`
- `jugadores_futbol`

La tabla `equipos_futbol` cuenta con los siguientes campos:

- equipo_id
- nombre_equipo
- ciudad
- estadio

La tabla `jugadores_futbol` cuenta con:

- jugador_id
- nombre_jugador
- posicion
- nacionalidad
- equipo_id
- goles
- asistencias

*El campo `equipo_id` de `jugadores_futbol` funciona como clave foránea y referencia al campo `equipo_id` de `equipos_futbol`.*

### Creación de registros 📝

Se insertaron 15 equipos y 15 jugadores.

Los equipos fueron registrados con:

- nombre_equipo
- ciudad
- estadio

Los jugadores fueron registrados con:

- nombre_jugador
- posicion
- nacionalidad
- equipo_id
- goles
- asistencias

*Los campos `equipo_id` y `jugador_id` configurados como `AUTO_INCREMENT` no se declararon manualmente en los registros principales.*

*Los identificadores generados automáticamente fueron utilizados para establecer la relación entre jugadores y equipos.*

### Creación de vistas avanzadas 👁️

Para practicar vistas avanzadas se crearon tres vistas mediante `CREATE OR REPLACE VIEW`.

#### `vista_rendimiento_jugadores`

Esta vista combina la información de jugadores y equipos mediante `INNER JOIN`.

Además, calcula una columna llamada `participaciones_ofensivas`, que corresponde a:

```text
goles + asistencias
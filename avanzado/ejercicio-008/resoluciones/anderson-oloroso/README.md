# ✨ Solución ejercicio avanzado: 08

## _Henrik Anderson Oloroso García 💯_

### Creación de las tablas 📑

Para este ejercicio se crearon dos tablas relacionadas con la temática de fútbol sala:

- `equipos_futsal`
- `jugadores_futsal`

La tabla `equipos_futsal` cuenta con:

- equipo_id
- nombre_equipo
- ciudad
- estadio

La tabla `jugadores_futsal` cuenta con:

- jugador_id
- nombre_jugador
- posicion
- nacionalidad
- equipo_id
- goles

*El campo `equipo_id` de `jugadores_futsal` funciona como clave foránea y establece la relación con la tabla `equipos_futsal`.*

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

*Los campos `equipo_id` y `jugador_id` están configurados como `AUTO_INCREMENT`, por lo que MySQL genera automáticamente sus identificadores.*

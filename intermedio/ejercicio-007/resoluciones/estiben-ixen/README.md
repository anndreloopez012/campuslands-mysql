# Ejercicio 007 - Normalizacion 2FN Liga de Futbol


## Descripcion

Proyecto MySQL basado en una liga de futbol aplicando principios de normalizacion en Segunda Forma Normal (2FN).


## Objetivo

Separar correctamente la informacion para evitar dependencias parciales y duplicacion de datos.


## Modelo utilizado

La base esta dividida en:

- teams:
  Guarda informacion general de los equipos.

- players:
  Guarda informacion individual de cada jugador.

- matches:
  Guarda encuentros deportivos.

- player_statistics:
  Relaciona jugadores con partidos y almacena estadisticas.


## Aplicacion de 2FN

La informacion fue separada para que cada atributo dependa completamente de su entidad correspondiente.

Ejemplo:

El nombre del equipo pertenece solamente a la tabla teams y no se repite dentro de jugadores o partidos.


## Ejecucion

Orden recomendado:

1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql



## Decisiones tecnicas

- Uso de claves primarias AUTO_INCREMENT.
- Uso de claves foraneas para mantener integridad.
- Restricciones CHECK para validar datos.
- Separacion de archivos SQL por responsabilidad.


## Consultas incluidas

- Jugadores con sus equipos.
- Ranking de goleadores.
- Cantidad de jugadores por club.
- Resultados de partidos.
- Ranking de asistencias.
- Equipos activos.


## Tecnologia

- MySQL 8+
- SQL
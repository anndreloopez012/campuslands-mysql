# Ejercicio 008 - Normalizacion 3FN Futbol Sala


## Descripcion

Proyecto MySQL basado en una liga de futbol sala aplicando principios de normalizacion en Tercera Forma Normal (3FN).


## Objetivo

Crear una estructura donde cada dato dependa exclusivamente de su entidad correspondiente evitando duplicacion y dependencias transitivas.


## Modelo utilizado

Tablas principales:

- cities:
  Guarda informacion geografica.

- coaches:
  Guarda informacion de entrenadores.

- teams:
  Guarda informacion de clubes.

- players:
  Guarda informacion de jugadores.

- matches:
  Guarda encuentros deportivos.

- player_statistics:
  Guarda rendimiento individual.



## Aplicacion de 3FN

Se eliminaron dependencias transitivas.

Ejemplo:

Antes:

Jugador → Equipo → Ciudad

Después:

Jugador referencia Equipo.

Equipo referencia Ciudad.


Esto evita repetir ciudades y entrenadores en cada jugador.



## Ejecucion

Ejecutar en orden:

1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql



## Decisiones tecnicas

- Uso de claves primarias AUTO_INCREMENT.
- Uso de claves foraneas.
- Separacion de entidades independientes.
- Restricciones CHECK para validar datos.
- Uso de JOIN para generar reportes.



## Consultas incluidas

- Jugadores con informacion completa.
- Ranking de goleadores.
- Jugadores por equipo.
- Resultados de partidos.
- Ranking de asistencias.
- Equipos activos por ciudad.



## Tecnologia

- MySQL 8+
- SQL
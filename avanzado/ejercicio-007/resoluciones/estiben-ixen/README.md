# Ejercicio Avanzado 007 - Vistas Avanzadas Liga de Futbol


## Descripcion

Proyecto MySQL basado en una liga profesional de futbol utilizando vistas avanzadas para crear reportes reutilizables.


## Objetivo

Aplicar vistas SQL para simplificar consultas complejas y generar indicadores deportivos.


## Modelo utilizado

Tablas:

- teams
- players
- matches
- player_statistics


Vistas creadas:

- top_scorers_view
- team_performance_view
- league_table_view



## Aplicacion de vistas

Las vistas permiten:

- Centralizar consultas complejas.
- Evitar repetir codigo SQL.
- Crear reportes faciles de consumir.
- Separar almacenamiento y analisis.



## Ejecucion

Ejecutar:

1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql



## Decisiones tecnicas

- Uso de JOIN para combinar informacion.
- Uso de funciones agregadas SUM y COUNT.
- Uso de CASE para calcular puntos.
- Creacion de vistas orientadas a negocio.
- Separacion de responsabilidades SQL.



## Reportes disponibles

- Ranking de goleadores.
- Rendimiento por equipo.
- Tabla de posiciones.
- Equipos activos.
- Ranking de asistencias.



## Tecnologia

- MySQL 8+
- SQL
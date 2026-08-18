# Ejercicio 009 - FOREIGN KEY Kickboxing


## Descripcion

Proyecto MySQL basado en una academia de kickboxing aplicando relaciones entre tablas mediante FOREIGN KEY.


## Objetivo

Implementar integridad referencial para evitar datos inconsistentes entre entidades relacionadas.


## Modelo utilizado

Tablas principales:

- trainers:
  Guarda entrenadores.

- weight_categories:
  Guarda divisiones de peso.

- fighters:
  Guarda peleadores relacionados con entrenador y categoria.

- fights:
  Guarda combates realizados.

- fight_results:
  Guarda resultados de cada combate.



## Uso de FOREIGN KEY

Las relaciones principales son:

fighters → trainers

fighters → weight_categories

fights → fighters

fight_results → fights

fight_results → fighters



Estas relaciones permiten que MySQL valide que los registros relacionados existan antes de insertar información.



## Ejecucion

Ejecutar en orden:

1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql



## Decisiones tecnicas

- Uso de claves primarias AUTO_INCREMENT.
- Uso de FOREIGN KEY para mantener integridad.
- Restricciones CHECK para validar valores.
- Separacion de archivos SQL por responsabilidad.



## Consultas incluidas

- Peleadores con entrenador y categoria.
- Ranking de victorias.
- Peleadores por categoria.
- Historial de combates.
- Ganadores registrados.
- Promedio de victorias.



## Tecnologia

- MySQL 8+
- SQL
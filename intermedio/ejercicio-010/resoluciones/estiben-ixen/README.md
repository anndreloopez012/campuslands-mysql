# Ejercicio 010 - UNIQUE Carreras Urbanas


## Descripcion

Proyecto MySQL basado en carreras urbanas aplicando restricciones UNIQUE para evitar registros duplicados.


## Objetivo

Implementar validaciones que aseguren que ciertos datos importantes sean unicos dentro del sistema.


## Modelo utilizado

Tablas principales:

- participants:
  Guarda corredores registrados.

- races:
  Guarda eventos deportivos.

- registrations:
  Guarda inscripciones.

- results:
  Guarda posiciones y tiempos finales.



## Aplicacion de UNIQUE

Se utilizaron restricciones UNIQUE en:

- Codigo del corredor.
- Correo del participante.
- Codigo de carrera.
- Codigo de inscripcion.
- Resultado asociado a una inscripcion.


Esto evita duplicidad de informacion critica.



## Ejecucion

Orden recomendado:

1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql



## Decisiones tecnicas

- Uso de AUTO_INCREMENT para identificadores.
- Uso de UNIQUE para datos irrepetibles.
- Uso de FOREIGN KEY para relaciones.
- Uso de CHECK para validaciones.
- Separacion DDL, DML y DQL.



## Consultas incluidas

- Corredores inscritos.
- Ranking de participantes.
- Participantes por carrera.
- Mejores tiempos.
- Corredores por pais.
- Filtros por distancia.



## Tecnologia

- MySQL 8+
- SQL
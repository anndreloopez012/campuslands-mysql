# Ejercicio Avanzado 009 - Bloqueos Kickboxing


## Descripcion

Proyecto MySQL basado en una liga de kickboxing utilizando bloqueos de transacciones.


## Objetivo

Aplicar control de concurrencia para evitar modificaciones simultaneas incorrectas sobre datos importantes.


## Modelo utilizado


Tablas:

- fighters

- events

- fights



## Bloqueos implementados


### SELECT FOR UPDATE

Permite bloquear un registro durante una transaccion.


Ejemplo:

Un administrador actualiza el ganador de una pelea mientras otro usuario no puede modificar ese mismo registro.



## Conceptos aplicados


- START TRANSACTION

- SELECT FOR UPDATE

- COMMIT

- ROLLBACK



## Ejecucion


Orden recomendado:


1. ddl/schema.sql


2. dml/inserts.sql


3. dql/consultas.sql


4. dql/transaction_locks.sql



## Decisiones tecnicas


- Se utilizaron transacciones para operaciones importantes.

- Los combates son datos sensibles porque afectan resultados oficiales.

- Los bloqueos evitan inconsistencias cuando varios usuarios trabajan al mismo tiempo.



## Tecnologia


- MySQL 8+

- SQL
# Ejercicio Avanzado 008 - Roles y Permisos Futbol Sala


## Descripcion

Proyecto MySQL basado en una liga de futbol sala implementando control de acceso mediante roles y permisos.


## Objetivo

Crear diferentes niveles de acceso para proteger la informacion almacenada en la base de datos.


## Modelo utilizado

Tablas:

- teams
- players
- matches
- statistics


## Roles creados


### role_futsal_admin

Permisos:

- Control total de la base.


### role_futsal_coach

Permisos:

- Consultar jugadores.
- Consultar estadisticas.


### role_futsal_analyst

Permisos:

- Lectura completa para generar reportes.


### role_futsal_registration

Permisos:

- Registrar y actualizar jugadores.



## Seguridad aplicada

Cada rol tiene solamente los permisos necesarios según su responsabilidad.


Esto aplica el principio:

"Least Privilege"

(menor privilegio necesario).



## Ejecucion

Orden recomendado:


1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql

4. permissions/roles.sql



## Decisiones tecnicas

- Separacion entre estructura, datos y seguridad.
- Uso de FOREIGN KEY.
- Uso de roles MySQL.
- Control de permisos por responsabilidad.


## Tecnologia

- MySQL 8+
- SQL
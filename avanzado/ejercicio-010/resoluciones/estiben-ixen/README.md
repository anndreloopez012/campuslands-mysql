# Ejercicio Avanzado 010 - Backup Logico Carreras Urbanas


## Descripcion

Proyecto MySQL basado en carreras urbanas aplicando procesos de backup logico y restauracion.


## Objetivo

Crear una solucion donde la informacion pueda ser exportada y recuperada mediante archivos SQL.


## Modelo utilizado


Tablas:

- participants

- races

- registrations

- race_results



## Backup logico aplicado


Se utiliza mysqldump para generar archivos SQL con:

- Estructura de tablas.
- Datos almacenados.
- Relaciones.
- Restricciones.



## Comandos utilizados


Backup completo:


mysqldump -u root -p urban_races_backup_db > backup.sql



Restauracion:


mysql -u root -p urban_races_restore_db < backup.sql



## Decisiones tecnicas


- Se separaron scripts por responsabilidad.
- Se utilizaron claves foraneas.
- Se aplicaron restricciones UNIQUE y CHECK.
- El backup permite recuperar toda la informacion del sistema.



## Ejecucion


Orden:


1. ddl/schema.sql

2. dml/inserts.sql

3. dql/consultas.sql

4. backup/backup_commands.sql



## Tecnologia


- MySQL 8+

- mysqldump

- SQL
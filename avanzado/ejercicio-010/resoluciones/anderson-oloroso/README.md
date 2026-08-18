# ✨ Solución ejercicio avanzado: 10

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `carreras_urbanas`, diseñada para almacenar información relacionada con diferentes carreras urbanas.

La tabla cuenta con los siguientes campos:

- carrera_id
- nombre_carrera
- ciudad
- distancia_km
- fecha_carrera
- estado

*El campo `carrera_id` está configurado como PK y `AUTO_INCREMENT`, por lo que MySQL genera automáticamente un identificador único para cada carrera.*

### Creación de registros 📝

Se insertaron 15 registros con información de diferentes carreras urbanas.

Los campos utilizados fueron:

- nombre_carrera
- ciudad
- distancia_km
- fecha_carrera
- estado

*El campo `carrera_id` no fue incluido manualmente porque MySQL genera automáticamente su valor mediante `AUTO_INCREMENT`.*

Los estados utilizados fueron:

- `Finalizada`
- `Programada`

Esto permite diferenciar las carreras que ya se realizaron de aquellas que todavía están pendientes.

### Verificación de información 🔎

Antes de realizar el respaldo lógico se incluyeron consultas para verificar que la información almacenada sea correcta.

Se realizaron las siguientes comprobaciones:

- Consultar todos los registros ordenados por fecha.
- Contar la cantidad total de carreras.
- Consultar únicamente las carreras finalizadas.
- Consultar únicamente las carreras programadas.
- Verificar la estructura de la tabla mediante `DESCRIBE`.

*Estas consultas permiten comprobar el estado de la información antes de generar un respaldo.*

### Backup lógico 💾

El backup lógico de MySQL se realiza mediante herramientas externas al lenguaje SQL, principalmente `mysqldump`.

Para respaldar únicamente la base de datos utilizada en el ejercicio se puede ejecutar desde la terminal:

```bash
mysqldump -u root -p campuslands_mysql > backup_campuslands_mysql.sql
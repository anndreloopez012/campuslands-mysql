# ✨ Solución ejercicio intermedio: 10

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `corredores_urbanos`, diseñada para almacenar información de participantes relacionados con carreras urbanas.

La tabla cuenta con los siguientes campos:

- corredor_id
- nombre_corredor
- documento
- correo
- ciudad
- categoria

*El campo `corredor_id` está configurado como PK y como `AUTO_INCREMENT`, por lo que identifica de manera única a cada corredor y su valor será asignado automáticamente por MySQL.*

### Aplicación de UNIQUE 🔐

Se utilizaron restricciones `UNIQUE` sobre los campos:

- documento
- correo

*El documento debe ser único para cada corredor, ya que no debería existir más de un participante registrado con el mismo documento.*

*El correo también debe ser único para evitar que diferentes registros utilicen la misma dirección de correo electrónico.*

*Estas restricciones permiten que MySQL rechace registros que intenten utilizar valores que ya existen en las columnas configuradas como `UNIQUE`.*

### Creación de registros 📝

Se insertaron 15 registros con los siguientes campos:

- nombre_corredor
- documento
- correo
- ciudad
- categoria

*El campo `corredor_id` no se incluyó directamente en los registros porque está configurado como PK y `AUTO_INCREMENT`. MySQL genera automáticamente un identificador único para cada corredor.*

*Los documentos y correos electrónicos utilizados son diferentes entre sí para cumplir con las restricciones `UNIQUE`.*

### Consultas ✅

Las consultas que se realizaron fueron:

- Seleccionar todos los corredores y ordenarlos alfabéticamente por nombre.
- Seleccionar únicamente los corredores pertenecientes a la categoría `Profesional`.
- Consultar los corredores registrados en las ciudades de Bogotá, Medellín y Cali.
- Contar la cantidad de corredores registrados en cada categoría utilizando `COUNT` y `GROUP BY`.
- Consultar los documentos que comienzan con `DOC1001` utilizando `LIKE`.

*Las consultas permiten comprobar que los registros fueron almacenados correctamente y facilitan diferentes formas de consultar la información de los corredores.*

### Explicación final 📝

*La solución permite practicar el uso de la restricción `UNIQUE` en MySQL para garantizar que determinados datos no puedan repetirse dentro de una tabla.*

*En este caso, tanto el documento como el correo electrónico deben ser únicos, ya que representan datos que permiten identificar individualmente a cada corredor.*

*La tabla contiene 15 registros válidos y cinco consultas que permiten verificar, filtrar, ordenar y agrupar la información almacenada.*
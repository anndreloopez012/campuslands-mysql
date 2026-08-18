# ✨ Solución ejercicio intermedio: 06

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `autos_hiperdeportivos`, diseñada para almacenar información organizada sobre diferentes autos hiperdeportivos.

La tabla cuenta con los siguientes campos:

- auto_id
- marca
- modelo
- anio
- motor
- potencia_hp
- velocidad_maxima_kmh
- precio
- pais_origen

*El campo `auto_id` está configurado como PK y como `AUTO_INCREMENT`, por lo que identifica de manera única cada automóvil y su valor será asignado automáticamente por MySQL.*

### Aplicación de la normalización 1FN 🔢

La tabla fue diseñada aplicando los principios de la Primera Forma Normal (1FN).

Cada columna contiene valores atómicos y no existen grupos de datos repetitivos dentro de una misma columna. Por ejemplo:

- La marca se almacena individualmente en `marca`.
- El modelo se almacena individualmente en `modelo`.
- La potencia se almacena individualmente en `potencia_hp`.
- La velocidad máxima se almacena individualmente en `velocidad_maxima_kmh`.
- El país de origen se almacena individualmente en `pais_origen`.

*No se almacenaron listas de marcas, múltiples motores, múltiples países o múltiples valores dentro de una misma celda. Cada campo representa un único dato relacionado con el automóvil.*

*El campo `motor` representa la especificación del motor como un único valor descriptivo, por ejemplo `W16 8.0L` o `V8 4.0L Hibrido`, por lo que no contiene una lista de motores.*

### Creación de registros 📝

Se insertaron 15 registros con los siguientes campos:

- marca
- modelo
- anio
- motor
- potencia_hp
- velocidad_maxima_kmh
- precio
- pais_origen

*El campo `auto_id` no se incluyó directamente en los registros porque está configurado como PK y `AUTO_INCREMENT`. MySQL asignará automáticamente un identificador único y consecutivo a cada automóvil.*

*Los datos fueron creados utilizando diferentes fabricantes, modelos, años, motores, potencias, velocidades máximas, precios y países de origen para representar información coherente con la temática de autos hiperdeportivos.*

### Consultas ✅

Las consultas que se realizaron fueron:

- Seleccionar todos los autos y ordenarlos de acuerdo con su potencia en caballos de fuerza, utilizando `ORDER BY`.
- Seleccionar los autos cuya velocidad máxima sea superior a `400 km/h`.
- Seleccionar los autos que tengan una potencia igual o superior a `1000 HP`.
- Agrupar los autos por país de origen y contar cuántos vehículos existen por cada país utilizando `COUNT` y `GROUP BY`.
- Seleccionar los autos cuyo precio se encuentre entre `900000000` y `1500000000`, utilizando `BETWEEN`.

*Las consultas permiten verificar que los datos almacenados cumplen con una estructura organizada y facilitan diferentes formas de análisis sobre los autos registrados.*

### Explicación final 📝

*La solución permite practicar la Primera Forma Normal (1FN) en MySQL mediante una tabla cuyos atributos contienen valores atómicos, sin listas ni grupos repetitivos dentro de las columnas.*

*Cada registro representa un único auto hiperdeportivo y cada columna representa una característica específica del mismo. Esto permite consultar, filtrar, ordenar y agrupar la información de manera sencilla.*

*Además, se incluyeron 15 registros coherentes y cinco consultas utilizando `ORDER BY`, `WHERE`, `COUNT`, `GROUP BY` y `BETWEEN` para comprobar y analizar la información almacenada.*
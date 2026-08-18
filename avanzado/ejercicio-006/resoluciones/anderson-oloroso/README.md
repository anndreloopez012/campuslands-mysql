# ✨ Solución ejercicio avanzado: 06

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `autos_hiperdeportivos`, diseñada para almacenar información de diferentes autos hiperdeportivos.

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

*El campo `auto_id` está configurado como PK y como `AUTO_INCREMENT`, por lo que identifica de manera única cada automóvil y su valor es generado automáticamente por MySQL.*

### Creación de índices ⚡

Para facilitar el análisis del rendimiento de las consultas mediante `EXPLAIN`, se crearon índices sobre diferentes columnas:

- `idx_marca`
- `idx_potencia`
- `idx_velocidad`
- `idx_anio`

*Los índices permiten que el optimizador de MySQL pueda evaluar diferentes estrategias para localizar los registros solicitados por las consultas.*

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

*El campo `auto_id` no se incluyó en los registros porque está configurado como PK y `AUTO_INCREMENT`.*

*Los datos representan diferentes autos hiperdeportivos con características variadas de potencia, velocidad, año, precio, motor y país de origen.*

### Aplicación de EXPLAIN 🔎

Se utilizaron cinco instrucciones `EXPLAIN` para analizar cómo MySQL planea ejecutar diferentes consultas.

Las consultas analizadas fueron:

- Buscar un automóvil utilizando la marca.
- Buscar autos con potencia superior a `1500 HP` y ordenarlos por potencia.
- Buscar autos con velocidad máxima igual o superior a `400 km/h`.
- Buscar autos fabricados desde el año `2023`.
- Agrupar autos con una potencia igual o superior a `1000 HP` y calcular la cantidad y potencia promedio por marca.

*La instrucción `EXPLAIN` permite observar información relacionada con el plan de ejecución de una consulta, como las tablas utilizadas, posibles índices, índice seleccionado, cantidad estimada de filas y tipo de acceso.*

### Análisis de rendimiento 📊

Los índices creados permiten que las consultas sobre `marca`, `potencia_hp`, `velocidad_maxima_kmh` y `anio` puedan ser consideradas por el optimizador de MySQL.

*En una tabla pequeña de solamente 15 registros, MySQL puede decidir que recorrer toda la tabla es más eficiente que utilizar un índice. Esto es normal y no significa que el índice esté incorrectamente creado.*

*La utilidad de los índices se vuelve más evidente cuando la cantidad de registros aumenta considerablemente.*

### Explicación final 📝

*La solución permite practicar `EXPLAIN` en MySQL mediante consultas que utilizan diferentes filtros, ordenamientos y agrupaciones.*

*Se agregaron índices sobre las columnas que son utilizadas frecuentemente como criterios de búsqueda. Posteriormente se utilizó `EXPLAIN` para analizar el posible plan de ejecución de las consultas.*

*El objetivo principal no es solamente ejecutar las consultas, sino aprender a interpretar cómo MySQL decide acceder a los datos y cómo los índices pueden contribuir al rendimiento de una base de datos.*
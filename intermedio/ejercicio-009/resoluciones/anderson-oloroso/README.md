# ✨ Solución ejercicio intermedio: 08

## _Henrik Anderson Oloroso García 💯_

### Creación de las tablas 📑

Para este ejercicio se crearon tres tablas relacionadas con la temática de kickboxing:

- `categorias_kickboxing`
- `peleadores_kickboxing`
- `combates_kickboxing`

La tabla `categorias_kickboxing` cuenta con:

- categoria_id
- nombre_categoria
- limite_peso

La tabla `peleadores_kickboxing` cuenta con:

- peleador_id
- nombre_peleador
- nacionalidad
- categoria_id

La tabla `combates_kickboxing` cuenta con:

- combate_id
- peleador_id
- fecha_combate
- oponente
- resultado

*Los campos `categoria_id`, `peleador_id` y `combate_id` funcionan como claves primarias en sus respectivas tablas.*

### Aplicación de FOREIGN KEY 🔗

Se utilizaron claves foráneas para establecer las relaciones entre las tablas.

En `peleadores_kickboxing`:

- `categoria_id` referencia a `categorias_kickboxing(categoria_id)`.

En `combates_kickboxing`:

- `peleador_id` referencia a `peleadores_kickboxing(peleador_id)`.

*Estas relaciones permiten garantizar que un peleador solamente pueda estar asociado a una categoría existente y que un combate solamente pueda registrarse para un peleador existente.*

### Creación de registros 📝

Se insertaron:

- 15 categorías de kickboxing.
- 15 peleadores.
- 15 combates.

En `categorias_kickboxing` se utilizaron:

- nombre_categoria
- limite_peso

En `peleadores_kickboxing` se utilizaron:

- nombre_peleador
- nacionalidad
- categoria_id

En `combates_kickboxing` se utilizaron:

- peleador_id
- fecha_combate
- oponente
- resultado

*Los campos configurados como `AUTO_INCREMENT` no fueron incluidos manualmente en los INSERT porque MySQL genera automáticamente sus identificadores.*

### Relaciones 🔗

Las relaciones utilizadas fueron:

- `categorias_kickboxing` → `peleadores_kickboxing`
- `peleadores_kickboxing` → `combates_kickboxing`

La primera relación permite conocer la categoría de peso correspondiente a cada peleador.

La segunda relación permite conocer los combates registrados para cada peleador.

### Consultas ✅

Las consultas que se realizaron fueron:

- Mostrar los peleadores junto con su categoría y límite de peso.
- Consultar peleadores pertenecientes a categorías con límite de peso superior a `80 kg`.
- Mostrar los combates que terminaron en victoria junto con la información del peleador.
- Contar la cantidad de peleadores registrados en cada categoría.
- Consultar los combates realizados a partir del `1 de marzo de 2026`.

*Las consultas utilizan `INNER JOIN` y `LEFT JOIN` para relacionar las tablas mediante las claves foráneas.*

### Explicación final 📝

*La solución permite practicar el uso de `FOREIGN KEY` en MySQL mediante un modelo compuesto por categorías, peleadores y combates.*

*Las claves foráneas mantienen la integridad referencial entre las tablas y evitan registrar relaciones hacia registros que no existen.*

*Además, se incluyeron 15 registros por cada entidad principal y cinco consultas que permiten comprobar las relaciones mediante `JOIN`, además de utilizar filtros, agrupaciones y ordenamiento de resultados.*
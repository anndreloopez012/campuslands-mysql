# Resolucion - Ejercicio 058 (avanzado)

## Autor
maria-montepeque

## Que hice
Modele perfiles de alumnos de una academia tech en
`alumnos_perfil_avanzado`, guardando en una columna `JSON` los datos
semiestructurados que no valen la pena normalizar en tablas aparte:
habilidades, proyectos y contacto. Practique las funciones JSON mas
usadas de MySQL:

- **`->` / `->>`**: extraer un campo (anidado) del documento.
- **`JSON_CONTAINS`**: buscar si un arreglo incluye un valor especifico.
- **`JSON_TABLE`**: convertir un arreglo JSON en filas relacionales,
  tanto de valores simples (habilidades) como de objetos anidados
  (proyectos con nombre y tecnologia).
- **`JSON_LENGTH`**: contar elementos de un arreglo.
- **`JSON_ARRAY_APPEND`**: agregar un elemento a un arreglo existente
  sin reescribir todo el documento.
- **`JSON_PRETTY`**: formatear el JSON para lectura humana.

## Decisiones tecnicas
- `CHECK` sobre la estructura del JSON
  (`JSON_TYPE(...) = 'ARRAY'` / `'OBJECT'`): garantiza que todo perfil
  tenga como minimo un arreglo de `habilidades` y un objeto de
  `contacto`, aunque MySQL no valide un esquema JSON completo como lo
  haria un `JSON Schema`.
- Los `INSERT` arman el JSON con `JSON_OBJECT`/`JSON_ARRAY` en vez de
  escribir el texto del JSON a mano, para que MySQL valide la sintaxis
  al construirlo.
- Andres Puentes empieza con `"proyectos": []` (arreglo vacio) a
  proposito, y `dml/inserts.sql` le agrega un proyecto con
  `JSON_ARRAY_APPEND` para demostrar una actualizacion parcial del
  documento. Verifique el resultado real: antes tenia 0 proyectos,
  despues del `UPDATE` la consulta 6 muestra el proyecto
  "Escaner de Puertos Basico" ya presente en el arreglo.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Extraer el usuario de GitHub de cada alumno (`->>`).
2. Alumnos con "Python" entre sus habilidades (`JSON_CONTAINS`).
3. Habilidades expandidas en filas (`JSON_TABLE`).
4. Cantidad de habilidades y proyectos por alumno (`JSON_LENGTH`).
5. Alumnos con mas de un proyecto registrado.
6. Confirmacion de que Andres Puentes ya tiene su proyecto (`JSON_ARRAY_APPEND`).
7. Proyectos expandidos en filas, con sus dos campos (`JSON_TABLE` sobre objetos anidados).

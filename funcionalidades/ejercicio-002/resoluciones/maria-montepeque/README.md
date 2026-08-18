# Resolucion - Funcionalidad 002: Tipos de datos MySQL

## Autor
maria-montepeque

## Que es
Elegir el tipo de dato correcto en MySQL (`INT`, `DECIMAL`, `VARCHAR`,
`DATE`, `DATETIME`, `JSON`, etc.) no es un detalle cosmetico: cambia
como se ordenan, validan y consultan los datos. Guardar todo como
`VARCHAR` "porque siempre funciona" es el error mas comun, y trae
problemas reales que MySQL no avisa al momento de crear la tabla.

## Como lo aplique
Cree **la misma informacion de corredores** de una carrera urbana dos
veces: `corredores_mal_tipado_demo` (todo en `VARCHAR`) y
`corredores_bien_tipado_demo` (cada columna con el tipo que le
corresponde: `DECIMAL` para dinero, `DATE` para la fecha, `TIME` para
el tiempo de llegada, `JSON` para los tiempos por punto de control).
Con los mismos datos en ambas, comprobe tres problemas reales y
verificables.

### Demostracion 1: ordenar por precio
```sql
SELECT nombre, precio_inscripcion FROM corredores_mal_tipado_demo ORDER BY precio_inscripcion;
```
Resultado real obtenido (VARCHAR): `120000.00, 150000.00, 45000.00,
60000.00, 90000.00`. MySQL compara texto caracter por caracter, y
`"1"` es "menor" que `"4"`, `"6"` o `"9"`, sin importar el valor
numerico real.

```sql
SELECT nombre, precio_inscripcion FROM corredores_bien_tipado_demo ORDER BY precio_inscripcion;
```
Resultado real obtenido (DECIMAL): `45000.00, 60000.00, 90000.00,
120000.00, 150000.00` — el orden numerico correcto, de mas barato a
mas caro.

### Demostracion 2: fechas que no existen
Intente guardar `'2026-02-30'` (febrero de 2026 solo tiene 28 dias) en
ambas tablas:
- En `corredores_bien_tipado_demo` (columna `DATE` real), el `INSERT`
  falla de verdad:
  ```
  ERROR 1292 (22007): Incorrect date value: '2026-02-30' for column
  'fecha_carrera' at row 1
  ```
- En `corredores_mal_tipado_demo` (columna `VARCHAR`), el mismo
  `INSERT` **se ejecuta sin ningun error** (esta si esta en
  `dml/inserts.sql`) y la fecha invalida queda guardada tal cual.
  `DATE` valida contra el calendario real; `VARCHAR` no sabe que
  "deberia" ser una fecha.

### Demostracion 3: leer un valor dentro de una lista
Los tiempos por punto de control son una lista variable por corredor.
Con `JSON`, leer el segundo valor es directo:
```sql
SELECT checkpoints ->> '$[1]' AS segundo_checkpoint FROM corredores_bien_tipado_demo;
```
Con `VARCHAR` (texto separado por comas), hay que encadenar
`SUBSTRING_INDEX` dos veces para llegar al mismo dato:
```sql
SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(checkpoints, ',', 2), ',', -1) FROM corredores_mal_tipado_demo;
```
Ambas dieron el mismo resultado real esta vez, pero la version VARCHAR
es fragil: si algun corredor tuviera 2 checkpoints en vez de 3, o si
un tiempo llegara a tener una coma por error de formato, la logica de
`SUBSTRING_INDEX` se rompe silenciosamente. Contar cuantos checkpoints
tiene cada corredor tambien es directo con `JSON_LENGTH(checkpoints)`,
frente a tener que contar comas a mano en el texto.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Decisiones tecnicas
- Las dos tablas tienen exactamente los mismos datos de origen (mismo
  nombre, mismo precio, misma fecha): la unica variable que cambia es
  el tipo de columna, para que la comparacion sea justa.
- `CHECK (precio_inscripcion > 0)` solo se agrego a la tabla bien
  tipada, porque `DECIMAL` es el unico de los dos donde esa
  restriccion tiene sentido real (compara un numero, no texto).
- El `INSERT` con la fecha invalida en la tabla mal tipada SI se deja
  en `dml/inserts.sql` porque no falla; el equivalente en la tabla
  bien tipada se documenta como prueba manual porque esta pensado
  para fallar y no se puede incluir en un script secuencial sin
  interrumpirlo.

## Como validar que quedo bien
- `ddl/schema.sql` y `dml/inserts.sql` se ejecutan sin errores.
- La consulta 1 de `dql/consultas.sql` muestra el orden alfabetico
  incorrecto en la tabla VARCHAR y el orden numerico correcto en la
  tabla DECIMAL.
- La consulta 2 confirma que la fecha invalida quedo guardada en la
  tabla VARCHAR.
- Repetir manualmente el `INSERT` de la fecha invalida contra la
  columna `DATE` real confirma el `ERROR 1292`.

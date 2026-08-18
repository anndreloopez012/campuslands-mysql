# Ejercicio 017 (funcionalidades) - maria-montepeque

Tematica: laboratorio de formulas quimicas. Demuestra `Full Text Search` con `formulas_quimicas` (12 fichas con descripciones largas).

## Que es

Un indice `FULLTEXT` prepara una columna de texto para busquedas por palabras (no por substrings como `LIKE`), permite combinar varias palabras, excluirlas, buscar frases exactas y ordenar los resultados por que tan bien encaja cada fila (`relevancia`) — algo que `LIKE '%...%'` no puede dar y que ademas nunca puede usar un indice normal.

## Como lo aplique

`ddl/schema.sql` crea la tabla **sin** el indice `FULLTEXT` a proposito, para poder comparar el "antes" contra el "despues" en `dql/consultas.sql`:

1. **Antes: `LIKE '%solvente%' OR LIKE '%sintesis%'`** — encuentra 4 fichas, y el `EXPLAIN` muestra `type=ALL` (recorre toda la tabla, ningun indice ayuda con un `%` al inicio).
2. Se crea `FULLTEXT INDEX ft_formula ON formulas_quimicas (nombre, descripcion)`.
3. **Despues: `MATCH(...) AGAINST('solvente sintesis')`** en modo lenguaje natural — encuentra solo 3 fichas (no 4) y cada una con un puntaje de `relevancia` distinto, ordenable con `ORDER BY`.
4. El mismo tipo de busqueda en `BOOLEAN MODE` con `EXPLAIN` — ahora aparece `type=fulltext`, usando el indice `ft_formula` en vez de recorrer la tabla completa.
5. **`BOOLEAN MODE` con `+`/`-`** — `+acido -sodio` encuentra las 3 fichas de categoria `Acido` que no mencionan `sodio`.
6. **`BOOLEAN MODE` con frase exacta** — `"aguas residuales"` encuentra solo `Hidroxido de Sodio`.
7. **`BOOLEAN MODE` con comodin `disolv*`** — encuentra las 3 fichas que usan `disolvente` o `disolverse`.
8. **Un "gotcha" real**: `innodb_ft_min_token_size` (por defecto `3`) ignora palabras mas cortas. La palabra `pH` aparece literalmente en la descripcion de `FQ-011`, pero por tener solo 2 letras **nunca se indexo**, asi que `MATCH(...) AGAINST('+pH' IN BOOLEAN MODE)` no encuentra nada aunque la palabra este ahi en texto plano.

## Algo interesante que se observo (LIKE vs FULLTEXT)

El paso 1 (`LIKE '%solvente%'`) encontro 4 fichas, pero el paso 3 (`MATCH ... AGAINST('solvente sintesis')`) solo 3. La diferencia es `Acetona Tecnica`, cuya descripcion dice "usada como **disolvente** de resinas": `LIKE` la encuentra porque `"disolvente"` **contiene la subcadena** `"solvente"` (falso positivo por texto parcial), mientras que `FULLTEXT` en modo lenguaje natural compara **palabras completas** y no considera `disolvente` lo mismo que `solvente`. Es una diferencia real entre buscar subcadenas y buscar palabras.

## Archivos

- `ddl/schema.sql` — `formulas_quimicas`, sin `FULLTEXT INDEX` todavia.
- `dml/inserts.sql` — 12 fichas con descripciones largas y variadas.
- `dql/consultas.sql` — 8 pasos: `LIKE` + `EXPLAIN` (antes), `CREATE FULLTEXT INDEX`, lenguaje natural con relevancia, `EXPLAIN` en modo booleano (despues), `+`/`-`, frase exacta, comodin `*`, y el caso del token de 2 letras que no se indexa.
- `evidencias/resultados_consultas.txt` — salida real de los 8 pasos ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el paso 2 crea el `FULLTEXT INDEX`; si se corre `dql/consultas.sql` dos veces seguidas sin repetir `ddl/schema.sql` antes, el `CREATE FULLTEXT INDEX` va a fallar porque el indice ya existe.

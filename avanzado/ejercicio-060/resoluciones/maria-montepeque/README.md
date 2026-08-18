# Resolucion - Ejercicio 060 (avanzado)

## Autor
maria-montepeque

## Que hice
Modele 5000 interacciones de chat sinteticas de un equipo de
streaming (`interacciones_chat_avanzado`, generadas con un CTE
recursivo x5 en `dml/inserts.sql`) y practique el ciclo completo de
optimizacion: **medir -> optimizar -> volver a medir**, con `EXPLAIN
ANALYZE` en vez de solo `EXPLAIN`, para tener tiempos reales de
ejecucion, no solo el plan estimado.

## Medicion real: antes y despues del indice
**Antes** (sin indice sobre `creador`, solo el escaneo completo):
```
-> Table scan on interacciones_chat_avanzado
   (cost=500 rows=5000) (actual time=3.04..3.72 rows=5000 loops=1)
-> Filter: creador = 'MidnightPlays'
   (cost=500 rows=500) (actual time=4.11..5.13 rows=1000 loops=1)
Tiempo total real: ~5.22 ms
```

**Despues** (con `CREATE INDEX idx_interacciones_chat_avanzado_creador`):
```
-> Covering index lookup on interacciones_chat_avanzado
   using idx_interacciones_chat_avanzado_creador (creador='MidnightPlays')
   (cost=136 rows=1000) (actual time=0.0437..0.236 rows=1000 loops=1)
Tiempo total real: ~0.73 ms
```

**Mejora real: de 5.22 ms a 0.73 ms, unas 7.2 veces mas rapido.**
Ademas de ser mas rapido, el indice es "covering": MySQL responde solo
con la informacion del indice, sin tener que volver a la tabla a leer
cada fila.

## Decisiones tecnicas
- Se uso un volumen de 5000 filas (muy por encima de los ~8 registros
  tipicos de otros ejercicios) porque con pocas filas MySQL casi
  siempre prefiere el escaneo completo sin importar si hay un indice
  disponible; la mejora solo se vuelve medible con datos reales.
- El indice se crea a mitad de `dql/consultas.sql`, entre la medicion
  "antes" y la medicion "despues", para que el archivo cuente la
  historia completa en orden: diagnosticar, optimizar, confirmar.
- La consulta 6 muestra el limite de un indice de una sola columna:
  ayuda con el filtro por `creador`, pero el filtro adicional por
  `tipo_interaccion` todavia necesita revisar filas una por una
  (`Using where`).

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. `EXPLAIN ANALYZE` antes de crear el indice.
2. `CREATE INDEX` (la optimizacion en si).
3. `EXPLAIN ANALYZE` despues de crear el indice.
4. Interacciones de un creador por tipo (ya usando el indice).
5. Distribucion de interacciones por creador.
6. `EXPLAIN` de un filtro compuesto que el indice solo cubre a medias.

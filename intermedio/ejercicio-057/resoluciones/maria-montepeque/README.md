# Resolucion - Ejercicio 057 (intermedio)

## Autor
maria-montepeque

## Que hice
Modele partidas de un videojuego de accion y aventura en
`partidas_heroe_intermedio` y escribi seis consultas de reporte:
resumen por jugador, un reporte con `ROLLUP`, una metrica calculada
(ratio derrotas/muertes), un reporte mensual, un porcentaje sobre el
total, y un ranking.

## Decisiones tecnicas
- La consulta 2 usa `GROUP BY dificultad WITH ROLLUP` para agregar una
  fila de total general sin tener que escribir una segunda consulta
  con `UNION`.
- La consulta 3 usa `NULLIF(SUM(muertes), 0)` para evitar division por
  cero si algun jugador nunca muere.
- La consulta 6 arma un ranking con una subconsulta (contando cuantos
  jugadores tienen mas minutos que el actual), sin usar funciones de
  ventana, que se reservan para el ejercicio avanzado.
- `CHECK (nivel_alcanzado > 0)` y `CHECK (duracion_min > 0)` como
  restricciones minimas.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Resumen por jugador (partidas, tiempo total, promedio de enemigos).
2. Enemigos derrotados por dificultad, con total general (`ROLLUP`).
3. Ratio enemigos derrotados / muertes por jugador.
4. Reporte mensual de tiempo jugado.
5. Porcentaje de partidas sin ninguna muerte.
6. Ranking de jugadores por tiempo total jugado.

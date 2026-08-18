# Resolucion - Ejercicio 057 (avanzado)

## Autor
maria-montepeque

## Que hice
Modele duelos contra jefes de un videojuego de accion y aventura
(`duelos_jefe_avanzado`, el daño infligido sube en cada intento,
simulando la curva de aprendizaje real de un jugador) y escribi seis
consultas con funciones de ventana:

1. **`RANK() OVER`**: posicion de cada jugador segun su daño total
   infligido en todos sus duelos.
2. **`ROW_NUMBER() OVER (PARTITION BY jugador, jefe ...)`**: el mejor
   intento (mayor daño) de cada jugador contra cada jefe.
3. **`SUM() OVER (... ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)`**:
   daño acumulado de cada jugador a lo largo del tiempo.
4. **`LAG() OVER`**: compara la duracion de cada intento contra el
   intento anterior del mismo jugador.
5. **`NTILE(4) OVER`**: divide todos los duelos en cuatro cuartiles
   segun el daño infligido.
6. **`AVG() OVER (... ROWS BETWEEN 1 PRECEDING AND CURRENT ROW)`**:
   promedio movil de daño en los ultimos 2 intentos de cada jugador.

## Decisiones tecnicas
- `PARTITION BY jugador` en la mayoria de las consultas: las funciones
  de ventana comparan cada intento contra los demas intentos DEL MISMO
  jugador, no contra todos los jugadores mezclados.
- La consulta 1 combina un CTE (`WITH danio_total AS (...)`) con
  `RANK() OVER`, porque la funcion de ventana necesita operar sobre el
  daño ya agregado por jugador, no sobre cada fila individual.
- `CHECK (danio_infligido > 0)` y `CHECK (duracion_seg > 0)` como
  restricciones minimas de negocio.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Ranking de jugadores por daño total (`RANK`).
2. Mejor intento de cada jugador contra cada jefe (`ROW_NUMBER`).
3. Daño acumulado por jugador (suma corrida).
4. Duracion comparada con el intento anterior (`LAG`).
5. Cuartiles de duelos segun el daño (`NTILE`).
6. Promedio movil de daño en los ultimos 2 intentos.

# Resolucion - Ejercicio 059 (avanzado)

## Autor
maria-montepeque

## Que hice
Modele ofertas relampago de un marketplace de accesorios
(`ofertas_marketplace_avanzado`, `auditoria_ofertas_marketplace_avanzado`)
y cree un **Event Scheduler** (`ev_expirar_ofertas_marketplace_avanzado`)
que revisa cada hora si alguna oferta ya vencio (`fecha_fin < NOW()`) y
la marca como `'expirada'`, dejando rastro en la auditoria. Nadie
tiene que acordarse de correr ese `UPDATE` a mano.

Las fechas de `dml/inserts.sql` se calculan con `DATE_SUB(NOW(), ...)`
y `DATE_ADD(NOW(), ...)` en vez de fechas fijas de 2026, a proposito:
este ejercicio es sobre automatizacion basada en tiempo, asi que
interesa que el escenario (algunas ofertas ya vencidas, otras
vigentes, otras futuras) sea real sin importar cuando se ejecute el
script.

## Verificacion real de que el evento se dispara solo
No me quede en la teoria. Cree una copia temporal del mismo evento,
programada para dispararse 3 segundos despues
(`ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 3 SECOND`), y esta fue
la secuencia real:

1. Antes: 3 ofertas (`Collar de Ambar`, `Pulsera de Cuero Trenzado`,
   `Collar Choker Minimalista`) ya tenian `fecha_fin < NOW()` pero
   seguian en estado `programada`/`activa`.
2. Espere a que el evento de prueba se disparara solo, **sin ejecutar
   ningun `UPDATE` manual**.
3. Despues: las 3 ofertas aparecieron en estado `'expirada'`, y la
   tabla `auditoria_ofertas_marketplace_avanzado` tenia exactamente 3
   filas nuevas, una por cada oferta, con la hora real de ejecucion
   (`2026-07-27 21:04:15`).
4. El evento de prueba (`ON SCHEDULE AT`, de una sola vez) desaparecio
   solo de `information_schema.EVENTS` al terminar — el comportamiento
   por defecto de MySQL (`ON COMPLETION NOT PRESERVE`) para eventos
   `ONE TIME`.

El evento real de este ejercicio
(`ev_expirar_ofertas_marketplace_avanzado`) es `RECURRING` (`EVERY 1
HOUR`) y sigue activo (`ENABLED`) despues de correr `dml/inserts.sql`;
la consulta 6 de `dql/consultas.sql` lo confirma consultando
`information_schema.EVENTS`.

## Decisiones tecnicas
- El `INSERT` en la auditoria va **antes** del `UPDATE`, filtrando por
  el estado viejo (`'programada'`/`'activa'`): asi cada oferta se
  registra una sola vez, la primera vez que el evento la encuentra
  vencida. En ejecuciones posteriores ya no calificara para el
  `INSERT` porque su estado ya sera `'expirada'` (evento idempotente).
- `ENGINE=InnoDB` en ambas tablas.
- `CHECK (precio_oferta < precio_original)` para que una "oferta"
  siempre sea realmente mas barata.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Estado actual de todas las ofertas.
2. Ofertas ya expiradas por el event scheduler.
3. Bitacora generada automaticamente.
4. Ofertas vigentes en este momento.
5. Ofertas que todavia no empiezan.
6. Detalle del event scheduler configurado (`information_schema.EVENTS`).

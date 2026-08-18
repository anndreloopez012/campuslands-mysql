# Resolucion - Ejercicio 059 (basico)

## Autor
maria-montepeque

## Que hice
Cree la tabla `pedidos_accesorios_basico` para un marketplace de
accesorios y escribi seis consultas centradas en fechas basicas:
`DATEDIFF`, `BETWEEN` sobre fechas, extraccion con `YEAR`/`MONTH`,
`DATE_ADD` y ordenamientos por fecha.

## Decisiones tecnicas
- `CHECK (fecha_entrega_estimada >= fecha_pedido)`: la entrega nunca
  puede estar programada antes del pedido.
- La consulta 4 usa `DATE_ADD` para simular un margen de 2 dias extra
  sobre la fecha estimada, un calculo tipico de logistica.
- La consulta 3 agrupa por `YEAR`/`MONTH` en vez de por la fecha
  completa, para un reporte mensual real.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Pedidos con dias de entrega calculados (`DATEDIFF`).
2. Pedidos de enero de 2026 (`BETWEEN`).
3. Pedidos agrupados por año y mes.
4. Fecha limite con margen de 2 dias (`DATE_ADD`).
5. Pedidos con el tiempo de entrega estimado mas largo.
6. Pedidos pendientes o enviados, ordenados por fecha de entrega.

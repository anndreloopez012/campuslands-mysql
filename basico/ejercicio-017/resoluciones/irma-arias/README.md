# Ejercicio 017 - Tipos de Datos para Tienda de Ropa

## Descripción
Módulo de datos diseñado para la administración y control de inventario de una tienda de ropa, aplicando de manera rigurosa diferentes tipos de datos (`VARCHAR`, `DECIMAL`, `INT`) y restricciones de validación (`CHECK`, `DEFAULT`).

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se utilizaron tipos numéricos exactos (`DECIMAL(10,2)`) para el manejo del dinero y `INT` para las cantidades en inventario (`stock`).
* Se incorporaron restricciones `CHECK` para validar de forma estricta las categorías de vestimenta, tallas disponibles y estados del stock.
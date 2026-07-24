# Ejercicio 005 - Índices para taller mecánico de motos

## Descripción
Módulo avanzado de base de datos para un taller mecánico de motos, enfocado en el diseño e implementación de **Índices en MySQL** (`INDEX`) para optimizar el rendimiento de las consultas y búsquedas frecuentes sobre grandes volúmenes de datos transaccionales.

## Decisiones Técnicas
- **Índices Implementados:** 
  - `idx_estado_fecha`: Índice compuesto para agilizar filtrados por estado de orden y rangos de fechas.
  - `idx_cliente` e `idx_placa`: Índices simples para búsquedas rápidas de registros por cliente o vehículo.
- **Validaciones:** Restricción `CHECK` para garantizar que el costo de mano de obra sea un valor financiero válido no negativo.

## Orden de Ejecución
1. `ddl/schema.sql` (Crea la estructura, restricciones e índices)
2. `dml/inserts.sql` (Inserta los registros de prueba)
3. `dql/consultas.sql` (Ejecuta consultas analíticas aprovechando la indexación)
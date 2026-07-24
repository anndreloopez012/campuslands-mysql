# Ejercicio 004 - HAVING para garaje de motos

## Descripción
Módulo intermedio enfocado en el uso de la cláusula `HAVING` en MySQL para aplicar filtros sobre resultados agrupados (`GROUP BY`), evaluando indicadores de rendimiento y costos en un taller o garaje de motocicletas.

## Decisiones Técnicas
- **Estructura:** Tabla única con restricciones de validación tipo `CHECK` para garantizar que el cilindraje y los costos de reparación sean valores positivos válidos.
- **Filtrado Condicional:** Uso estratégico de `HAVING` para segmentar métricas agregadas de negocio (como promedios de costos y conteos por marca o estado).

## Orden de Ejecución
1. `ddl/schema.sql` (Creación de base de datos y tablas)
2. `dml/inserts.sql` (Inserción de registros realistas)
3. `dql/consultas.sql` (Ejecución de reportes analíticos con `HAVING`)
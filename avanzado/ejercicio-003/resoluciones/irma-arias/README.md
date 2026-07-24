# Ejercicio 003 - Funciones SQL para inventario de skins shooter

## Descripción
Módulo avanzado de base de datos para la administración de un inventario de skins de juegos tipo shooter, haciendo uso de funciones personalizadas (`STORED FUNCTIONS`) en MySQL para cálculos dinámicos basados en el desgaste y valor de los elementos.

## Decisiones Técnicas
- **Función SQL:** Se implementó `fn_calcular_valor_real` para calcular de manera determinista el precio real del skin aplicando una fórmula de depreciación según su nivel de desgaste.
- **Validaciones de Integridad:** Se incluyeron restricciones `CHECK` para garantizar que el precio sea positivo y que el desgaste se mantenga estrictamente entre `0.000` y `1.000`.

## Orden de Ejecución
1. `ddl/schema.sql` (Crea la base de datos, tablas y funciones SQL)
2. `dml/inserts.sql` (Inserta los registros de prueba)
3. `dql/consultas.sql` (Ejecuta el uso de la función y los reportes analíticos)
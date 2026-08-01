# Módulo de Datos - Inventario de Skins Shooter (Ejercicio 033 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el diseño estructurado con llaves primarias (`PRIMARY KEY`), restricciones estrictas (`CHECK`) y consultas analíticas para un inventario de skins de juegos tipo shooter.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `skins_shooter` aplicando un identificador único autoincremental como llave primaria y validaciones para precios y stock.
- **dml/inserts.sql**: Inserción de 8 registros de skins con diferentes rarezas, armas asociadas, valores económicos y estados de inventario.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en ordenamientos por valor, filtros por estado, agrupamientos por rareza y métricas financieras de inventario.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`
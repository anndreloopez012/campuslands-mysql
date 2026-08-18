# Hypercars EXPLAIN - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en autos hiperdeportivos. El objetivo fue diseñar una estructura organizada que permitiera almacenar información sobre marcas, autos, clientes y ventas, aplicando buenas prácticas de modelado de bases de datos. Además, se utilizaron índices en los campos más consultados para analizar el comportamiento de las consultas mediante la instrucción **EXPLAIN**, permitiendo comprender cómo MySQL ejecuta cada consulta.

## Solución General

La solución consiste en la creación de una base de datos llamada **hypercars_explain**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **brands**, **cars**, **customers** y **sales**. Se añadieron índices en columnas utilizadas frecuentemente en búsquedas y relaciones, como **brand_id**, **horsepower**, **customer_id** y **car_id**. Posteriormente se insertaron registros realistas y se desarrolló un conjunto de consultas precedidas por **EXPLAIN** para analizar el plan de ejecución de búsquedas, uniones entre tablas y ordenamientos, permitiendo evaluar cómo MySQL accede a la información almacenada.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos, tablas e índices.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas utilizando **EXPLAIN** para analizar el plan de ejecución.

**Estructura del proyecto:**

```text
hypercars_explain/
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
```

**Resultado esperado:**

- Base de datos creada correctamente.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Índices creados correctamente para optimizar las consultas.
- Datos insertados sin errores.
- Consultas ejecutadas con **EXPLAIN**, mostrando el plan de ejecución utilizado por MySQL para acceder a los datos.
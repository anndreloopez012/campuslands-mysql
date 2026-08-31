# Tienda de Ropa - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL para administrar información básica de una tienda de ropa. El sistema permite registrar categorías, productos, clientes y ventas, utilizando diferentes tipos de datos de acuerdo con la naturaleza de cada atributo. El objetivo principal es practicar la selección y utilización correcta de tipos de datos en MySQL dentro de una estructura organizada y relacionada.

## Solución General

La solución consiste en crear la base de datos **tienda_ropa**, compuesta por las tablas **categorias**, **productos**, **clientes** y **ventas**. Para cada campo se seleccionó un tipo de dato apropiado, utilizando `INT` para identificadores y cantidades, `VARCHAR` para información textual, `DECIMAL` para valores monetarios, `BOOLEAN` para controlar la disponibilidad, `DATE` y `DATETIME` para fechas, y `ENUM` para limitar los métodos de pago permitidos. Se insertaron cinco registros en cada tabla y posteriormente se realizaron tres consultas para comprobar el funcionamiento de los datos y las relaciones establecidas entre las tablas.

## Evidencia

La solución está organizada en tres componentes principales:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de datos de prueba.
- **03_dql.sql** → Consultas de información.
- **README.md** → Documentación del ejercicio.

### Tipos de datos utilizados

| Tipo de dato | Uso |
|---|---|
| `INT` | Identificadores y cantidades |
| `VARCHAR` | Información textual |
| `DECIMAL` | Precios y valores monetarios |
| `BOOLEAN` | Disponibilidad de productos |
| `DATE` | Fecha de registro |
| `DATETIME` | Fecha y hora de las ventas |
| `ENUM` | Métodos de pago |

### Cantidad de datos

Se insertaron **5 registros en cada tabla**, cumpliendo con el mínimo establecido para el ejercicio.

### Consultas realizadas

1. Consulta de productos mostrando precio y stock.
2. Consulta de productos disponibles junto con su categoría.
3. Consulta de ventas relacionadas con los clientes.

### Estructura del proyecto

```text
tienda_ropa/
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
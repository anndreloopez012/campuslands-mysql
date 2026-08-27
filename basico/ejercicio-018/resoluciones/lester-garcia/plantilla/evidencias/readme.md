# Viajes y Turismo - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL para administrar información relacionada con una agencia de viajes y turismo. El sistema permite registrar destinos, clientes, paquetes turísticos y reservas. El objetivo principal es practicar el uso de claves primarias (`PRIMARY KEY`) para identificar de forma única cada registro dentro de las diferentes tablas.

## Solución General

La solución consiste en crear la base de datos **viajes_turismo**, compuesta por las tablas **destinos**, **clientes**, **paquetes** y **reservas**. Cada tabla cuenta con un campo identificador definido como `PRIMARY KEY`, permitiendo diferenciar de manera única cada registro. Los paquetes se relacionan con los destinos y las reservas se relacionan con los clientes y paquetes mediante claves foráneas. Se insertaron cinco registros en cada tabla y posteriormente se realizaron tres consultas para comprobar la información almacenada, visualizar los paquetes relacionados con sus destinos y consultar las reservas que se encuentran confirmadas.

## Evidencia

La solución está organizada en archivos independientes según la responsabilidad de cada componente SQL:

- **01_ddl.sql** → Creación de la base de datos, tablas y claves.
- **02_dml.sql** → Inserción de datos de prueba.
- **03_dql.sql** → Consultas de información.
- **README.md** → Documentación del ejercicio.

### PRIMARY KEY utilizadas

| Tabla | PRIMARY KEY |
|---|---|
| `destinos` | `id_destino` |
| `clientes` | `id_cliente` |
| `paquetes` | `id_paquete` |
| `reservas` | `id_reserva` |

Las claves primarias permiten identificar cada registro de forma única y evitan que existan dos registros con el mismo identificador.

### Relaciones

- Un destino puede tener varios paquetes turísticos.
- Un cliente puede realizar varias reservas.
- Un paquete puede aparecer en varias reservas.

### Cantidad de datos

Se insertaron **5 registros en cada tabla**, cumpliendo con el mínimo establecido.

### Consultas realizadas

1. Consulta de destinos y sus identificadores.
2. Consulta de paquetes relacionados con sus destinos.
3. Consulta de reservas confirmadas junto con los datos del cliente y paquete.

### Estructura del proyecto

```text
lester-garcia/plantilla
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
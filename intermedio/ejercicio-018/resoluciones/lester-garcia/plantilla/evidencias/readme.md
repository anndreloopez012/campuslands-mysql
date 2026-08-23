# Viajes y Turismo

## Nombre del alumno
**Lester Garcia**
_____________________________________

## Descripción general

Este proyecto implementa una base de datos relacional en MySQL para administrar información relacionada con una agencia de viajes y turismo.

El sistema permite registrar clientes, destinos, viajes y reservas.

La base de datos está organizada utilizando una estructura relacional que permite consultar información sobre reservas, destinos, cantidad de viajeros e ingresos potenciales.

## Objetivo

Practicar el uso de `GROUP BY` en MySQL mediante consultas que permitan agrupar información y generar indicadores útiles para una agencia de viajes.

## Estructura del proyecto

- `ddl.sql`: creación de la base de datos, tablas, relaciones y restricciones.
- `dml.sql`: inserción de datos de prueba.
- `dql.sql`: consultas y reportes.
- `README.md`: documentación del ejercicio.

## Modelo de datos

La base de datos está compuesta por cuatro tablas:

- `clientes`
- `destinos`
- `viajes`
- `reservas`

La tabla `clientes` almacena la información de las personas que realizan reservas.

La tabla `destinos` contiene las ciudades y países disponibles.

La tabla `viajes` almacena los diferentes planes turísticos ofrecidos para cada destino.

La tabla `reservas` relaciona a los clientes con los viajes seleccionados.

## Explicación general de la solución

La información fue dividida en diferentes tablas para evitar duplicidad de datos.

Un destino puede tener varios viajes y un viaje puede recibir múltiples reservas.

Las reservas permiten conocer cuántas personas están asociadas a cada viaje y cuál es el estado de cada reserva.

El concepto principal del ejercicio es `GROUP BY`.

`GROUP BY` permite agrupar registros que tienen un mismo valor y posteriormente aplicar funciones de agregación como:

- `COUNT()`
- `SUM()`

## Consultas realizadas

### Consulta 1: Reservas por destino

Agrupa las reservas según el destino y permite identificar cuáles tienen mayor cantidad de reservas.

### Consulta 2: Personas por destino

Agrupa las reservas por destino y suma la cantidad de personas registradas.

Las reservas canceladas son excluidas del cálculo.

### Consulta 3: Ingresos potenciales

Calcula el valor económico de las reservas pendientes y confirmadas agrupándolas por destino.

### Consulta 4: Estado de las reservas

Agrupa las reservas según su estado y muestra la cantidad de reservas y personas asociadas.

## Decisiones técnicas

Se utilizaron claves primarias para identificar de manera única cada registro.

Las claves foráneas permiten mantener la integridad referencial entre clientes, destinos, viajes y reservas.

Se utilizaron restricciones `CHECK` para controlar valores como la cantidad de personas, el precio y los estados permitidos.

Las consultas utilizan `GROUP BY` acompañado de funciones de agregación para generar indicadores útiles.

Las reservas canceladas son excluidas de los cálculos económicos y de cantidad de viajeros cuando no representan una reserva activa.

## Evidencia

La evidencia del ejercicio debe incluir capturas de pantalla de:

1. La creación de la base de datos.
2. La creación de las tablas.
3. La inserción de los datos.
4. La consulta de reservas por destino.
5. La consulta de personas por destino.
6. La consulta de ingresos potenciales.
7. La consulta de reservas agrupadas por estado.

## Ejecución

Los archivos deben ejecutarse en el siguiente orden:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`

Primero se crea la estructura de la base de datos, posteriormente se cargan los datos y finalmente se ejecutan las consultas.
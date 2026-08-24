# Restaurante de Comida Urbana

## Nombre del alumno
**Lester Garcia**
_____________________________________

## Descripción general

Este proyecto implementa una base de datos relacional en MySQL para administrar la información de un restaurante de comida urbana.

El sistema permite registrar clientes, categorías, productos y pedidos, además de almacenar el detalle de los productos incluidos en cada pedido.

La solución está organizada mediante archivos DDL, DML y DQL, permitiendo separar la creación de la estructura, la carga de información y las consultas.

## Objetivo

Practicar el uso de `INNER JOIN` en MySQL mediante consultas que relacionan diferentes tablas de una base de datos.

El objetivo es comprender cómo obtener información relacionada sin duplicar datos entre las tablas.

## Estructura del proyecto

- `ddl.sql`: creación de la base de datos, tablas, relaciones y restricciones.
- `dml.sql`: inserción de datos de prueba.
- `dql.sql`: consultas y reportes.
- `README.md`: documentación del proyecto.

## Modelo de datos

La base de datos contiene las siguientes tablas:

- `clientes`
- `categorias`
- `productos`
- `pedidos`
- `detalle_pedidos`

La tabla `detalle_pedidos` funciona como tabla intermedia entre los pedidos y los productos.

Un pedido puede contener varios productos y un producto puede aparecer en diferentes pedidos.

## Explicación general de la solución

La información se separó en diferentes entidades para evitar almacenar datos repetidos.

Por ejemplo, los datos del cliente se encuentran en `clientes` y el pedido solamente almacena su `id_cliente`.

Cuando necesitamos mostrar el nombre del cliente junto con su pedido utilizamos:

```sql
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente
```

De esta manera podemos relacionar ambas tablas mediante sus claves.

## Consultas realizadas

### Consulta 1: Pedidos y clientes

Permite consultar los pedidos junto con la información básica del cliente que realizó cada pedido.

### Consulta 2: Detalle de pedidos

Relaciona clientes, pedidos, productos y categorías para mostrar exactamente qué productos fueron solicitados.

### Consulta 3: Total de pedidos

Calcula el valor total de cada pedido utilizando la cantidad y el precio unitario de cada producto.

### Consulta 4: Productos más vendidos

Permite identificar los productos con mayor cantidad de unidades vendidas y los ingresos generados.

## Decisiones técnicas

Se utilizaron claves primarias para identificar de manera única cada registro.

Las claves foráneas permiten establecer las relaciones entre las tablas y mantener la integridad referencial.

La tabla `detalle_pedidos` utiliza una clave primaria compuesta:

```sql
PRIMARY KEY (id_pedido, id_producto)
```

Esto evita registrar dos veces el mismo producto dentro del mismo pedido.

También se utilizaron restricciones `CHECK` para evitar precios, cantidades o valores inválidos.

Las consultas utilizan `INNER JOIN` porque se requiere obtener únicamente información que tenga una relación válida entre las tablas involucradas.

## Evidencia

La evidencia del ejercicio debe incluir capturas de pantalla de:

1. La creación de la base de datos.
2. La creación de las tablas.
3. La inserción de los datos.
4. La consulta de pedidos y clientes.
5. La consulta del detalle de pedidos.
6. La consulta de totales por pedido.
7. La consulta de productos más vendidos.

## Ejecución

Los archivos deben ejecutarse en el siguiente orden:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`

Primero se crea la estructura de la base de datos, después se cargan los datos y finalmente se ejecutan las consultas.
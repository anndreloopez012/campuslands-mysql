# Tienda de Ropa

## Nombre del alumno
**Lester Garcia**
_____________________________________

## Descripción general

Este proyecto implementa una base de datos relacional en MySQL para administrar la información de una tienda de ropa.

El sistema permite registrar clientes, categorías, productos y pedidos, además de almacenar el detalle de los productos incluidos en cada pedido.

La solución está organizada mediante archivos DDL, DML y DQL.

## Objetivo

Practicar el uso de `LEFT JOIN` en MySQL mediante consultas que permitan obtener información incluso cuando no existe una relación entre determinados registros.

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

La tabla `detalle_pedidos` permite relacionar los productos con los pedidos.

## Explicación general de la solución

La estructura fue diseñada para representar una tienda de ropa de manera organizada.

Los clientes pueden realizar uno o varios pedidos.

Cada pedido puede contener diferentes productos y un producto puede aparecer en diferentes pedidos.

La relación entre pedidos y productos se administra mediante `detalle_pedidos`.

El ejercicio se enfoca principalmente en `LEFT JOIN`.

A diferencia de `INNER JOIN`, `LEFT JOIN` permite conservar todos los registros de la tabla ubicada a la izquierda aunque no exista una coincidencia en la tabla relacionada.

## Ejemplo

La consulta:

```sql
SELECT
    c.nombre,
    COUNT(p.id_pedido)
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nombre;
```

permite mostrar todos los clientes.

Si un cliente no tiene pedidos, el cliente sigue apareciendo en el resultado.

## Consultas realizadas

### Consulta 1: Productos y ventas

Muestra todos los productos y la cantidad de unidades vendidas, incluyendo productos que todavía no tienen ventas.

### Consulta 2: Clientes y pedidos

Muestra todos los clientes junto con la cantidad de pedidos realizados.

### Consulta 3: Categorías y productos

Muestra todas las categorías y la cantidad de productos y unidades disponibles.

### Consulta 4: Productos sin ventas

Identifica los productos que no aparecen en ningún detalle de pedido.

## Decisiones técnicas

Se utilizaron claves primarias para identificar de manera única cada registro.

Las claves foráneas permiten mantener la integridad referencial entre las diferentes tablas.

La tabla `detalle_pedidos` utiliza una clave primaria compuesta:

```sql
PRIMARY KEY (id_pedido, id_producto)
```

Esto evita registrar dos veces el mismo producto dentro de un mismo pedido.

Se utilizaron restricciones `CHECK` para evitar precios y cantidades inválidas.

En las consultas se utiliza `LEFT JOIN` cuando se necesita conservar los registros de la tabla principal aunque no tengan una relación asociada.

También se utilizó `COALESCE()` para convertir valores `NULL` en `0` cuando se calculan cantidades.

## Evidencia

La evidencia del ejercicio debe incluir capturas de pantalla de:

1. La creación de la base de datos.
2. La creación de las tablas.
3. La inserción de los datos.
4. La consulta de productos y ventas.
5. La consulta de clientes y pedidos.
6. La consulta de categorías y productos.
7. La consulta de productos sin ventas.

## Ejecución

Los archivos deben ejecutarse en el siguiente orden:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`

Primero se crea la estructura, posteriormente se cargan los datos y finalmente se ejecutan las consultas.
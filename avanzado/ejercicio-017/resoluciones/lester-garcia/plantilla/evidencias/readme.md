# Clothing Store Procedures - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en una tienda de ropa. El objetivo fue implementar procedimientos almacenados que permitan reutilizar consultas y operaciones frecuentes sobre la información almacenada.

Los procedimientos almacenados permiten guardar instrucciones SQL dentro de MySQL y ejecutarlas posteriormente mediante `CALL`, evitando tener que escribir nuevamente las mismas consultas u operaciones.

## Solución General

La solución consiste en la creación de una base de datos llamada **clothing_store_procedures**, conformada por cuatro tablas: **customers**, **products**, **orders** y **order_details**.

La tabla `customers` almacena la información de los clientes, mientras que `products` contiene las prendas disponibles en la tienda. Las tablas `orders` y `order_details` permiten registrar los pedidos y los productos incluidos en cada uno.

Para practicar procedimientos almacenados se desarrollaron tres procedimientos:

- **get_all_products()** → Consulta todos los productos registrados.
- **get_products_by_category()** → Consulta los productos pertenecientes a una categoría específica.
- **update_product_stock()** → Permite actualizar el stock de un producto.

De esta manera se practican procedimientos orientados tanto a la consulta como a la modificación de información.

## Procedimientos almacenados

### 1. `get_all_products()`

Este procedimiento permite consultar todos los productos registrados en la tienda.

Su ejecución se realiza mediante:

```sql
CALL get_all_products();
```

### 2. `get_products_by_category()`

Este procedimiento recibe una categoría como parámetro y muestra los productos que pertenecen a dicha categoría.

Ejemplo:

```sql
CALL get_products_by_category('T-Shirt');
```

### 3. `update_product_stock()`

Este procedimiento recibe el identificador de un producto y una nueva cantidad de stock para actualizar su inventario.

Ejemplo:

```sql
CALL update_product_stock(3, 20);
```

## Decisiones técnicas

- Se utilizaron nombres de tablas y campos en inglés.
- Se utilizaron claves primarias para identificar los registros.
- Se utilizaron claves foráneas para mantener la integridad referencial.
- Se utilizó `DECIMAL(10,2)` para almacenar valores monetarios.
- Se utilizaron parámetros `IN` para enviar información a los procedimientos.
- Se utilizó `DELIMITER` para permitir la creación de procedimientos con múltiples instrucciones.
- Se utilizó `CALL` para ejecutar los procedimientos almacenados.
- Se utilizaron solamente tres procedimientos para mantener el alcance del ejercicio controlado.
- Se incluyeron procedimientos tanto de consulta como de modificación para demostrar diferentes usos de los procedimientos almacenados.

## Evidencia

La solución está organizada en tres archivos SQL independientes:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Creación, ejecución y verificación de los tres procedimientos almacenados.

**Estructura del proyecto:**

```text
lester-garcia/plantilla
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
```

## Resultado esperado

- Base de datos creada correctamente.
- Tablas creadas sin errores.
- Clientes, productos y pedidos insertados correctamente.
- Tres procedimientos almacenados creados correctamente.
- `get_all_products()` mostrando los productos registrados.
- `get_products_by_category()` filtrando productos según la categoría indicada.
- `update_product_stock()` modificando correctamente el inventario.
- Procedimientos almacenados verificados mediante `SHOW PROCEDURE STATUS`.
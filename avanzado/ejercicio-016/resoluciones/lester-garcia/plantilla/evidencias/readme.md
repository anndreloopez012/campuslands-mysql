# Urban Food Transactions - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un restaurante de comida urbana. El objetivo fue diseñar una estructura organizada para almacenar información sobre clientes, productos, pedidos y detalles de los pedidos, aplicando el concepto de **transacciones** para garantizar que las operaciones relacionadas se ejecuten de manera controlada.

Una transacción permite agrupar varias operaciones SQL como una única unidad de trabajo. Si todas las operaciones se realizan correctamente, los cambios pueden confirmarse mediante `COMMIT`. Si ocurre un problema o se desea cancelar la operación, los cambios pueden revertirse mediante `ROLLBACK`.

## Solución General

La solución consiste en la creación de una base de datos llamada **urban_food_transactions**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas:

- **customers** → Almacena la información de los clientes.
- **products** → Contiene los productos disponibles en el restaurante.
- **orders** → Registra los pedidos realizados.
- **order_details** → Almacena los productos incluidos en cada pedido.

La estructura permite representar un pedido compuesto por uno o varios productos.

Durante la implementación se desarrollaron diferentes escenarios utilizando transacciones:

1. Creación de un pedido exitoso utilizando `START TRANSACTION` y `COMMIT`.
2. Simulación de un pedido cancelado utilizando `ROLLBACK`.
3. Actualización del estado de un pedido utilizando una transacción.

## Decisiones técnicas

- Se utilizaron claves primarias para identificar de forma única cada registro.
- Se utilizaron claves foráneas para mantener la integridad referencial.
- Se separaron los pedidos de sus detalles para mantener una estructura organizada.
- Se utilizó `DECIMAL(10,2)` para almacenar precios y valores monetarios.
- Se utilizó `START TRANSACTION` para iniciar una unidad de trabajo.
- Se utilizó `COMMIT` para confirmar definitivamente los cambios.
- Se utilizó `ROLLBACK` para revertir los cambios realizados dentro de una transacción.
- Se utilizó `LAST_INSERT_ID()` para obtener el identificador del pedido recién creado.
- Se utilizó una condición de stock en las operaciones de descuento para evitar reducir el inventario cuando no existe disponibilidad suficiente.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de los datos iniciales.
- **03_dql.sql** → Ejecución de transacciones, confirmación, reversión y consultas de verificación.

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
- Clientes y productos registrados.
- Pedidos y detalles relacionados mediante claves foráneas.
- Primera transacción confirmada correctamente mediante `COMMIT`.
- Segunda transacción revertida correctamente mediante `ROLLBACK`.
- Stock actualizado únicamente en las operaciones confirmadas.
- Estado de los pedidos actualizado correctamente.
- Consultas de verificación mostrando información coherente.
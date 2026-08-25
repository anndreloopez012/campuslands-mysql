# Restaurante de Comida Urbana - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL para administrar información básica de un restaurante de comida urbana. El sistema permite registrar clientes, categorías de productos, productos disponibles y pedidos realizados por los clientes. El objetivo principal es practicar la creación de tablas mediante `CREATE TABLE`, estableciendo una estructura organizada y relaciones simples entre las entidades.

## Solución General

La solución consiste en crear la base de datos **restaurante_comida_urbana**, utilizando las tablas **clientes**, **categorias**, **productos**, **pedidos** **detalle_pedidos**. Cada tabla representa una entidad del restaurante y cuenta con una clave primaria para identificar sus registros. Los productos se relacionan con las categorías mediante una clave foránea, mientras que los pedidos se relacionan con los clientes. Posteriormente se insertaron diez registros en cada tabla para disponer de información suficiente para realizar pruebas y finalmente se desarrollaron tres consultas DQL para consultar los productos disponibles, visualizar los pedidos junto con sus clientes y calcular los ingresos generados por los pedidos entregados.

## Evidencia

La solución se encuentra organizada en archivos independientes de acuerdo con la responsabilidad de cada componente SQL:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de datos de prueba.
- **03_dql.sql** → Consultas para obtener información de la base de datos.
- **README.md** → Documentación del ejercicio.

### Tablas creadas

| Tabla | Descripción |
|---|---|
| `clientes` | Almacena los datos de los clientes |
| `categorias` | Registra las categorías de productos |
| `productos` | Contiene los productos ofrecidos por el restaurante |
| `pedidos` | Registra los pedidos realizados por los clientes |

### Relaciones

La tabla `productos` contiene una relación con `categorias`:

```sql
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
```

La tabla `pedidos` contiene una relación con `clientes`:

```sql
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
```

### Cantidad de datos

Se utilizaron **10 registros por cada tabla**, cumpliendo y superando el mínimo solicitado de 5 registros.

### Consultas realizadas

Se desarrollaron tres consultas:

1. Consulta de productos disponibles y sus categorías.
2. Consulta de pedidos junto con la información del cliente.
3. Consulta de ingresos generados por pedidos entregados.

### Estructura del proyecto

```text
lester-garcia/plantilla
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
```

### Resultado esperado

- Base de datos creada correctamente.
- Cinco tablas creadas.
- Relaciones mediante claves foráneas funcionando correctamente.
- Mínimo de cinco registros por tabla cumplido.
- Consultas DQL ejecutadas correctamente.
- Información organizada y lista para ser revisada por otro desarrollador.
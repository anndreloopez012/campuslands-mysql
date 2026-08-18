# Ejercicio 009 (funcionalidades) - maria-montepeque

Tematica: tienda de ropa. Demuestra `CTE` (`WITH`) con `categorias_ropa` (11 categorias en un arbol de 3 niveles) y `productos_ropa` (16 productos).

## Que es

Una CTE (`WITH nombre AS (SELECT ...)`) es una consulta con nombre que se puede usar como si fuera una tabla dentro de la consulta principal. Sirve para dividir una consulta compleja en partes legibles, encadenar varias, y — en su version `WITH RECURSIVE` — recorrer datos jerarquicos (arboles) que un `JOIN` normal no puede resolver porque no se sabe de antemano cuantos niveles tiene.

## Como lo aplique

`categorias_ropa` tiene una autorreferencia (`categoria_padre_id`) que arma este arbol:

```
Ropa
├── Ropa de Hombre
│   ├── Camisas
│   │   ├── Camisas de Vestir
│   │   └── Camisas Casuales
│   └── Pantalones
├── Ropa de Mujer
│   ├── Vestidos
│   └── Blusas
└── Accesorios
    └── Cinturones
```

Los 16 productos estan repartidos en distintos niveles del arbol a proposito (algunos en categorias hoja, otros pegados directo a una categoria intermedia como `Camisas` o `Ropa de Hombre`), para que las consultas recursivas tengan que sumar productos de mas de un nivel.

`dql/consultas.sql` recorre:

1. **CTE simple** — resume el inventario (`COUNT`, `SUM`, `AVG`) por categoria y lo reutiliza como si fuera una tabla, en vez de repetir el `GROUP BY` dentro de una subconsulta en el `FROM`.
2. **Dos CTEs encadenadas** — `stock_bajo` (stock ≤ 4) y `precio_alto` (precio ≥ 50), unidas para encontrar los productos que son **ambas cosas a la vez**: `Pantalon Cargo` y `Vestido de Noche Negro`.
3. **CTE `RECURSIVE`** — parte de `Ropa de Hombre` (id 2) y baja por el arbol sin limite de niveles fijo, encontrando sus 4 subcategorias (`Camisas`, `Pantalones`, `Camisas de Vestir`, `Camisas Casuales`) con su `nivel` de profundidad.
4. **La misma CTE recursiva como filtro** — suma todos los productos de la seccion "Ropa de Hombre" completa (9 productos, 96 unidades de stock, $3831.00 de valor), aunque esos productos esten en categorias de distinta profundidad dentro de esa rama.
5. **CTE `RECURSIVE` para construir rutas (breadcrumbs)** — concatena el nombre de cada categoria con el de sus padres, dando rutas como `Ropa > Ropa de Hombre > Camisas > Camisas de Vestir`.

## Archivos

- `ddl/schema.sql` — `categorias_ropa` (autorreferencia) y `productos_ropa`.
- `dml/inserts.sql` — 11 categorias en arbol de 3 niveles + 16 productos.
- `dql/consultas.sql` — 5 consultas: CTE simple, dos CTEs encadenadas, CTE recursiva (listado), CTE recursiva (agregado), CTE recursiva (ruta completa).
- `evidencias/resultados_consultas.txt` — salida real de las 5 consultas ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

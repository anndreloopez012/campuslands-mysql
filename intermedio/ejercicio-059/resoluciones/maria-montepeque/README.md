# Resolucion - Ejercicio 059 (intermedio)

## Autor
maria-montepeque

## Que hice
Modele el catalogo de un marketplace de accesorios en
`productos_marketplace_intermedio` y cree tres vistas **simples**: una
sola tabla, sin `JOIN` ni agregacion.

1. **`vw_productos_marketplace_disponibles_intermedio`**: solo
   productos con `stock > 0`.
2. **`vw_productos_marketplace_destacados_intermedio`**: solo
   productos marcados para la vitrina principal.
3. **`vw_catalogo_marketplace_publico_intermedio`**: una proyeccion
   que oculta el `stock` interno; un cliente del marketplace no
   deberia ver el inventario exacto, solo el nombre, categoria y
   precio.

## Decisiones tecnicas
- Las tres vistas son actualizables (una sola tabla base, sin
  agregacion), aunque este ejercicio se centra en usarlas para
  consultar, no para escribir a traves de ellas.
- La consulta 4 combina dos vistas con `JOIN` para responder "que
  productos destacados tienen stock", mostrando que las vistas se
  pueden combinar entre si como cualquier tabla.
- Verifique que la vista publica realmente no expone el stock:
  ```bash
  mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 -e \
    "USE campuslands_mysql; SELECT stock FROM vw_catalogo_marketplace_publico_intermedio;"
  ```
  Resultado real obtenido:
  ```
  ERROR 1054 (42S22): Unknown column 'stock' in 'field list'
  ```
- `CHECK (precio > 0)` y `CHECK (stock >= 0)` como restricciones
  minimas.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Productos disponibles para vender.
2. Productos destacados.
3. Catalogo publico completo.
4. Productos destacados que ademas tienen stock.
5. Precio promedio del catalogo publico, por categoria.
6. Confirmacion de que la vista publica no expone el stock.

# 👕 Ejercicio 017 - LEFT JOIN para Tienda de Ropa

## 📌 Descripción del Proyecto
Este proyecto analiza el comportamiento de las ventas y el catálogo de una **Tienda de Ropa** en MySQL utilizando **LEFT JOIN**. Permite detectar huérfanos de información, categorías desaprovechadas, productos de baja rotación (sin ventas) y clientes inactivos.

---

## 🏗️ Estructura de la Base de Datos

La base de datos `intermedio_tienda_ropa` se compone de 4 tablas relacionales:

* **`categorias_017`**: Categorización general del catálogo.
* **`productos_017`**: Productos registrados vinculados a categorías.
* **`clientes_017`**: Directorio de clientes de la tienda.
* **`detalle_ventas_017`**: Registro de transacciones ejecutadas.

---

## 💡 Casos de Uso Técnico de LEFT JOIN

A diferencia de `INNER JOIN`, el uso de `LEFT JOIN` preserva todos los registros de la tabla izquierda, permitiendo:

1. **Detección de Vacíos (Patrón `WHERE ... IS NULL`):** Utilizado para hallar clientes que nunca han comprado o categorías que no tienen productos asignados.
2. **Manejo de Valores Nulos (`IFNULL`):** Permite presentar estados de cuenta y consolidados en cero (`0.00`) para entidades sin historial de transacciones.
3. **Indicadores de Inventario:** Evaluar qué prendas no han tenido salida dentro del registro de ventas.

---

## 🚀 Guía de Ejecución

1. Ejecuta el script **DDL** para estructurar las tablas.
2. Ejecuta el script **DML** para cargar datos con casos borde (registros no vinculados).
3. Corre las consultas **DQL** para analizar los resultados completos de la tienda.
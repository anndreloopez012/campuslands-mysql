# 👕 Ejercicio 017 - Tipos de Datos para Tienda de Ropa

## 📌 Descripción del Proyecto
Este proyecto implementa la gestión de inventario y registro de ventas para una **Tienda de Ropa** en MySQL, enfocado en el uso correcto y preciso de los tipos de datos nativos para garantizar optimización de memoria, precisión decimal e integridad de la información.

---

## 🏗️ Justificación de Tipos de Datos

* **`DECIMAL(10, 2)`:** Utilizado en `precio` y `monto_total` para evitar errores de redondeo que ocurren con tipos flotantes (`FLOAT`/`DOUBLE`) al manejar moneda.
* **`ENUM('XS', 'S', 'M', 'L', 'XL')`:** Garantiza la estandarización estricta de las tallas de ropa, evitando textos libres o inconsistentes.
* **`BOOLEAN`:** Control de disponibilidad rápida (`en_stock`) optimizado internamente como `TINYINT(1)`.
* **`DATE`:** Utilizado en `fecha_nacimiento` donde solo importa año, mes y día.
* **`DATETIME`:** Registra con precisión la fecha y hora exacta (`YYYY-MM-DD HH:MM:SS`) en que se completa una venta.

---

## 🚀 Guía de Ejecución

1. Ejecuta el script **DDL** para crear el esquema e imponer los tipos de datos y restricciones.
2. Ejecuta el script **DML** para poblar el catálogo de ropa y registros de prueba.
3. Corre las consultas **DQL** para analizar las funciones de fecha, agregación decimal y filtros booleanos.
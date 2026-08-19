# 👕 Ejercicio 017 - Procedimientos Almacenados para Tienda de Ropa

## 📌 Descripción del Proyecto
Este proyecto implementa la lógica de negocio central de una **Tienda de Ropa** directamente en la capa de base de datos MySQL mediante **Procedimientos Almacenados** (`STORED PROCEDURES`). Permite automatizar registros, validar inventarios y procesar transacciones sin depender de código externo.

---

## 🏗️ Procedimientos Creados

1. **`sp_registrar_producto`:** Automatiza el alta de prendas aplicando validaciones de control sobre el precio (`precio > 0`) y el inventario (`stock >= 0`).
2. **`sp_procesar_venta_ropa`:** Encapsula la lógica de venta dentro de una transacción (`START TRANSACTION`). Verifica el stock actual, calcula el monto total, actualiza el inventario y revierte los cambios (`ROLLBACK`) si el stock es insuficiente.
3. **`sp_obtener_total_ventas_cliente`:** Recibe parámetros de entrada y salida (`IN`/`OUT`) para retornar el acumulado económico y la cantidad de órdenes de un cliente específico.

---

## 🚀 Guía de Ejecución

1. Ejecuta el script **DDL** para crear las tablas con motor `InnoDB`.
2. Ejecuta el script **DML** para cargar las categorías, prendas y clientes base.
3. Ejecuta el bloque de **Procedures & DQL** para crear la lógica almacenada y validar la ejecución de los llamados `CALL`.
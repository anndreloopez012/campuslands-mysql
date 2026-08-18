# Resolución Ejercicio 009 - Bloqueos (Kickboxing)

**Autor:** Sergio Miranda Ajú
**Fecha:** Julio 2026

## Descripción del Proyecto
Resolución del módulo avanzado enfocado en la gestión de **bloqueos de concurrencia (Locking)** en MySQL utilizando el motor `InnoDB`. Se diseñó un esquema para gestionar peleadores de kickboxing, asegurando la integridad de las transacciones financieras en entornos concurrentes.

## Decisiones Técnicas
- **Motor InnoDB:** Es obligatorio declarar `ENGINE=InnoDB` para habilitar el control transaccional (`START TRANSACTION`, `COMMIT`) y el bloqueo de filas (*Row-level Locking*).
- **Bloqueo Exclusivo (`FOR UPDATE`):** Utilizado para congelar la fila del peleador al procesar el pago de un nuevo combate, evitando lecturas o escrituras de otras sesiones simultáneas hasta el `COMMIT`.
- **Bloqueo Compartido (`FOR SHARE`):** Permite lecturas simultáneas pero bloquea cualquier actualización concurrente mientras la transacción de reporte esté abierta.
- **Tipado de Datos:** Empleo de `DECIMAL(12,2)` para los premios acumulados y `ENUM` para restringir la categoría de peso y el estado del peleador.

## Instrucciones de Ejecución
Ejecutar los scripts en el siguiente orden estricto:
1. `ddl/schema.sql` (Crea la base de datos y la tabla InnoDB)
2. `dml/inserts.sql` (Carga los datos iniciales)
3. `dql/consultas.sql` (Ejecuta las transacciones con bloqueos y consultas analíticas)
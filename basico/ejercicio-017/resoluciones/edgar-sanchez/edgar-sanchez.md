## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aborda la definición óptima de **Tipos de Datos en MySQL** aplicados al contexto de una Tienda de Ropa. La solución selecciona de forma estricta los tipos de datos numéricos (`INT`, `DECIMAL`), de texto (`VARCHAR`), lógicos (`BOOLEAN`) y temporales (`DATE`, `DATETIME`), garantizando eficiencia en almacenamiento y precisión en las operaciones financieras e inventarios.

**Organización y Decisiones Técnicas**
*   **Selección de Tipos de Datos:**
    - `DECIMAL(8,2)` y `DECIMAL(10,2)` para precios y montos totales, evitando errores de redondeo propios de flotantes (`FLOAT`/`DOUBLE`).
    - `VARCHAR` con longitudes acotadas para campos alfanuméricos (`sku`, `codigo_fiscal`, `talla`, `color`).
    - `DATETIME` para registros precisos de transacciones financieras y `DATE` para fechas de catálogo de productos.
    - `BOOLEAN` (equivalente a `TINYINT(1)` en MySQL) para estados de catálogo eficientes.
*   **Integridad Referencial y Dominio:**
    - Validaciones `CHECK` para rangos permitidos en tallas y métodos de pago.
    - Restricción de valores positivos en cantidades, precios y existencias.
*   **Ausencia de Comentarios Internos:** Los scripts se presentan limpios de comentarios en línea para mantener el estándar técnico de entrega.
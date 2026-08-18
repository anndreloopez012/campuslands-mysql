## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo resuelve la evaluación de datos dinámicos mediante **Subconsultas (Subqueries)** escalares y correlacionadas en MySQL aplicado al control técnico y facturación de un Taller Mecánico de Motos. La solución permite aislar artículos del inventario con precios superiores al promedio general y calcular la contribución financiera de cada mecánico agrupando mano de obra y repuestos en expresiones independientes.

**Organización y Decisiones Técnicas**
*   **Implementación de Subconsultas:**
    - Subconsulta Escalar en cláusula `WHERE`: Determina el precio promedio global del inventario de repuestos `(SELECT AVG(precio_unitario_usd) FROM repuestos_moto)` para filtrar los insumos de mayor valor sin necesidad de agregaciones complejas en la consulta principal.
    - Subconsultas Correlacionadas en cláusula `SELECT`: Vinculan dinámicamente la clave `m.mecanico_id` para computar de forma independiente el recuento de órdenes entregadas, el total acumulado de mano de obra y el valor de los repuestos consumidos por cada especialista.
*   **Integridad Referencial y Dominio:**
    - Claves foráneas configuradas con `ON DELETE RESTRICT` y `ON UPDATE CASCADE` en el catálogo principal de repuestos y asignación de mecánicos para asegurar trazabilidad.
    - `ON DELETE CASCADE` en `repuestos_utilizados_ot` para mantener la consistencia en caso de anulación de órdenes de trabajo.
    - Restricciones `CHECK` para precios, horas y stock no negativos ($\ge 0$), valores mayores a cero ($> 0.00$) y dominios cerrados para el estado de las órdenes de trabajo.
*   **Ausencia de Comentarios Internos:** Todas las sentencias DDL, DML y DQL se presentan totalmente limpias de comentarios en línea para dar cumplimiento estricto a las normas técnicas fijadas.
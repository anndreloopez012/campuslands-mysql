## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aplica los principios de la Primera Forma Normal (1FN) al catálogo de autos hiperdeportivos. En lugar de almacenar listas compuestas de equipamientos o características técnicas separadas por comas dentro de un único campo de texto, el diseño descompone y atomiza cada especificación en una entidad independiente relacionada mediante una clave foránea.

**Organización y Decisiones Técnicas**
*   **Cumplimiento estricto de la 1FN:** Se eliminaron los grupos repetitivos e información no atómica. Cada celda contiene únicamente un valor indivisible por columna y fila.
*   **Clave Primaria Única:** Ambas tablas incorporan su propia llave primaria auto-incremental (`auto_id` y `equipamiento_id`), garantizando que cada registro sea identificable de forma unívoca.
*   **Integridad Referencial:** Se vinculó `equipamientos_hiperdeportivos` con `autos_hiperdeportivos` utilizando las reglas `ON DELETE CASCADE` y `ON UPDATE CASCADE` para preservar la coherencia referencial ante eventuales eliminaciones o modificaciones en la entidad principal.
*   **Validaciones de Dominio:** Se aplicó una restricción `CHECK` sobre la columna `categoria` para estandarizar los subsistemas del auto (Aerodinámica, Motorización, Chasis, Electrónica, Interior).
*   **Ausencia de Comentarios:** Todo el bloque de código SQL entregado fue procesado sin comentarios en el script DDL, DML ni DQL, cumpliendo con la directiva técnica estipulada.
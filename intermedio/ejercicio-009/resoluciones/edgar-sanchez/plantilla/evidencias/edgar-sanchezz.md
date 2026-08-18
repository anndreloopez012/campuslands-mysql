## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo modela las relaciones entre gimnasios, entrenadores y peleadores dentro de una organización de kickboxing. El foco principal es la implementación estricta de llaves foráneas (`FOREIGN KEY`) para preservar la integridad referencial en esquemas multinevel.

**Organización y Decisiones Técnicas**
*   **Integridad Referencial con Claves Foráneas:**
    - Se definieron referencias dirigidas desde la tabla dependiente `peleadores_kickboxing` hacia `gimnasios_kickboxing` y `entrenadores_kickboxing`.
    - La tabla `entrenadores_kickboxing` a su vez se relaciona mediante su propia clave foránea con `gimnasios_kickboxing`.
*   **Reglas de Restricción (`ON DELETE RESTRICT ON UPDATE CASCADE`):** Se evitó el borrado accidental de gimnasios o entrenadores si existen atletas vinculados activos, mientras que la actualización de identificadores se propaga en cascada.
*   **Uso de `COUNT(DISTINCT ...)`:** En las consultas de agregación multisitio se aplicó el conteo de elementos únicos para evitar la sobreestimación de registros derivada del cruce de múltiples tablas primarias y secundarias.
*   **Limpieza de Código:** Todo el bloque de instrucciones SQL DDL, DML y DQL fue procesado totalmente libre de comentarios en línea para mantener los estándares de entrega del proyecto.
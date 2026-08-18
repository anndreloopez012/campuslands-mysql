    ## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo resuelve la administración de datos para el sistema de Carreras Urbanas enfocado en la implementación de estrategias de Backup Lógico en MySQL mediante la herramienta de consola `mysqldump`. La solución abarca el diseño relacional, inserción de datos operativos, consultas analíticas y la documentación de las directivas necesarias para respaldar y restaurar la base de datos de manera profesional.

**Estrategia y Comandos de Backup Lógico (`mysqldump`)**

1. **Respaldo Completo de Estructura y Datos (Full Backup):**
   ```bash
   mysqldump -u usuario -p --single-transaction --quick --routines --triggers db_carreras_urbanas > backup_carreras_urbanas_full.sql
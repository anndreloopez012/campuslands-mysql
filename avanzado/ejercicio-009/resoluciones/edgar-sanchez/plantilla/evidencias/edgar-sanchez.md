## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo resuelve la gestión de eventos y rankings en kickboxing aplicando mecanismos de concurrencia y control de bloqueos en MySQL (`LOCK TABLES` y bloqueos pesimistas a nivel de fila con `SELECT ... FOR UPDATE`). El diseño evita condiciones de carrera (Race Conditions) e inconsistencias al actualizar resultados de peleas y puntuaciones en ambientes transaccionales concurrentes.

**Organización y Decisiones Técnicas**
*   **Bloqueo Pesimista en Transacción (`SELECT ... FOR UPDATE`):**
    - Se aisló la actualización del resultado de un combate dentro de un bloque `START TRANSACTION ... COMMIT`.
    - La instrucción `FOR UPDATE` bloquea en exclusividad las filas asociadas a los peleadores involucrados (`peleador_id IN (1, 3)`), garantizando que ningún otro hilo o proceso modifique sus puntos de ranking o récords hasta confirmar el fallo del juzgado.
*   **Bloqueo Explicito de Lectura (`LOCK TABLES ... READ`):**
    - Se aplicó un bloqueo de lectura compartido para generar reportes consistentes congelando las tablas `peleadores_kickboxing` y `gimnasios_kickboxing`, impidiendo escrituras mientras se leen indicadores globales de puntuación.
*   **Integridad Referencial y Dominio:**
    - Se definió la restricción `chk_peleadores_distintos` para impedir combates de un peleador contra sí mismo.
    - Claves foráneas vinculadas a gimnasios y peleadores para consistencia del cuadro de honor.
*   **Ausencia de Comentarios Internos:** Todas las instrucciones DDL, DML, DQL y sentencias de control transaccional/bloqueos se presentan totalmente limpias de comentarios en línea para dar estricto cumplimiento a los estándares técnicos exigidos.
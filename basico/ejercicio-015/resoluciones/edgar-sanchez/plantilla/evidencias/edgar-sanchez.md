## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 29/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo modela la relación simple uno a muchos (1:N) entre las plataformas de juego disponibles y los títulos asociados en una biblioteca gamer personal. Permite consultar métricas agregadas como inversión económica, total de horas jugadas por ecosistema y catálogo de juegos pendientes por completar.

**Organización y Decisiones Técnicas**
*   **Integridad Referencial (1:N):** Se implementó una clave foránea (`FOREIGN KEY`) `plataforma_id` en la tabla secundaria `videojuegos` vinculada a la tabla primaria `plataformas`. Se asignaron acciones de integridad `ON DELETE CASCADE` y `ON UPDATE CASCADE` para asegurar coherencia en la modificación o eliminación de un catálogo primario.
*   **Uso de Uniones Internas (`INNER JOIN`):** Implementado para cruzar de forma estricta los registros de títulos con los metadatos completos de la plataforma correspondiente en listados planos y consultas de juegos no terminados.
*   **Uso de Uniones Izquierdas (`LEFT JOIN`):** Empleado en el reporte financiero y de consumo de tiempo por plataforma para evitar omitir ecosistemas que eventualmente no tengan aún títulos registrados.
*   **Restricciones Dominio:** Se validó que el campo numérico de `horas_jugadas` no permita valores negativos y que los precios cumplan la restricción `CHECK (precio_compra_usd >= 0.00)`.
*   **Limpieza de Código:** La solución técnica fue estructurada libre de comentarios en el script DDL, DML y DQL para mantener los estándares profesionales solicitados.
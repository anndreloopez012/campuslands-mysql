## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aborda la optimización y evaluación de planes de ejecución en MySQL utilizando el comando `EXPLAIN`. El objetivo central es analizar cómo el motor de base de datos resuelve las consultas sobre el esquema de autos hiperdeportivos, verificando el uso correcto de índices primarios, secundarios y compuestos para minimizar escaneos completos de tablas (`ALL`).

**Organización y Decisiones Técnicas**
*   **Uso del Comando `EXPLAIN`:** Se antepuso la sentencia `EXPLAIN` a las consultas DQL para inspeccionar las columnas clave devueltas por el optimizador: `select_type`, `table`, `type`, `possible_keys`, `key`, `key_len`, `ref`, `rows` y `Extra`.
*   **Estrategia de Indexación:**
    - `idx_especificaciones_potencia`: Se creó un índice secundario sobre `potencia_hp` para optimizar la búsqueda por rangos y el ordenamiento sin incurrir en `Using filesort`.
    - `idx_pruebas_pista_tiempo`: Se creó un índice compuesto sobre `(pista_nombre, tiempo_lap_segundos)` para permitir búsquedas directas por circuito con ordenamiento de tiempos cubierto por el propio índice.
*   **Evaluación de Rendimiento (`type` join):** Las uniones basadas en claves primarias y claves únicas (como `modelo_id` en `especificaciones_tecnicas`) aseguran un acceso de tipo `eq_ref` o `const`, lo cual representa el nivel de rendimiento idóneo en operaciones de cruce.
*   **Ausencia de Comentarios:** Las sentencias DDL, DML y DQL con `EXPLAIN` se presentan completamente limpias de comentarios en línea para dar cumplimiento con los estándares del proyecto.
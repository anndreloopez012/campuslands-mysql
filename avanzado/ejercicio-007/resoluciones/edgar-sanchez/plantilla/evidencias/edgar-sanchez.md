## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo resuelve el modelo de gestión para una Liga de Fútbol Profesional aplicando vistas avanzadas (`CREATE VIEW`). La solución abstrae lógicas de negocio complejas como el cálculo dinámico de la tabla de posiciones, el rendimiento ofensivo individual por atleta y la consolidación salarial/deportiva por club, aislando la complejidad para los usuarios finales o capas de reporte.

**Organización y Decisiones Técnicas**
*   **Construcción de Vistas Avanzadas:**
    - `vw_tabla_clasificacion`: Utiliza estructuras condicionales `CASE WHEN` para evaluar el rol del equipo (local o visitante) y proyectar de manera automática victorias, empates, derrotas, diferencia de gol y puntos totales (3 por victoria, 1 por empate).
    - `vw_lideres_estadisticas_jugadores`: Consolida goles, asistencias y participaciones directas agregando funciones de manejo de nulos (`NULLIF`) para prevenir división por cero al calcular promedios.
    - `vw_resumen_nomina_y_rendimiento_clubes`: Asocia la parte financiera (salarios) con el rendimiento deportivo usando agregaciones multinivel con `COALESCE`.
*   **Integridad Referencial y Reglas de Negocio:**
    - Restricción `chk_equipos_distintos` en `partidos_liga` para impedir que un equipo juegue contra sí mismo.
    - Restricción `uq_jugador_partido` para evitar duplicidad de planillas de rendimiento para un mismo atleta en una misma fecha.
*   **Ausencia de Comentarios Internos:** Todo el bloque de sentencias DDL, DML, DQL y creación de Vistas fue desarrollado omitiendo comentarios dentro del código SQL, dando cumplimiento a las especificaciones dadas.
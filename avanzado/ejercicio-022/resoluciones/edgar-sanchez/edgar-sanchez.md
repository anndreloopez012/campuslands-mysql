## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo implementa capas de abstracción analíticas mediante **Vistas Avanzadas (Advanced Views)** en MySQL para un Pipeline de Animación 3D. La solución simplifica la complejidad de consultas multitabla con agregaciones complejas (`SUM`, `AVG`, `COUNT`), calculando en tiempo real tiempos de cómputo de render farm, densidad poligonal por proyecto y distribución de carga de trabajo por artista 3D.

**Organización y Decisiones Técnicas**
*   **Control de Limpieza Previa DDL:**
    - Inclusión de sentencias `DROP TABLE IF EXISTS` ordenadas en función del diagrama de dependencias (`render_frames` $\rightarrow$ `animaciones_assets` $\rightarrow$ `escenas_3d` $\rightarrow$ `proyectos_animacion` $\rightarrow$ `artistas_3d`) para asegurar ejecuciones idempotentes.
    - Eliminación previa de objetos relacionales dinámicos mediante `DROP VIEW IF EXISTS`.
*   **Construcción e Integración de Vistas Avanzadas:**
    - `vw_resumen_produccion_proyectos`: Consolida métricas de alto nivel agrupadas por largometraje/proyecto, proyectando la duración estimada en segundos a partir de los fotogramas (`duracion_frames / fps`) y acumulando la carga poligonal.
    - `vw_metricas_rendimiento_render`: Extrae indicadores de rendimiento técnico de la granja de renderizado (`render farm`), promediando el consumo de memoria RAM ($GB$) y calculando las horas hombre/máquina por escena.
    - `vw_carga_trabajo_artistas`: Evalúa el desempeño y asignación de activos 3D por cada artista del estudio, previniendo cuellos de botella en las fases de modelado, rigging y efectos VFX.
*   **Integridad Referencial y Dominio:**
    - Llaves foráneas con eliminación en cascada (`ON DELETE CASCADE`) para dependencias débiles (escenas, assets y frames) y `ON DELETE RESTRICT` para entidades maestras (artistas y directores).
    - Restricciones de validación `CHECK` para garantizar recuentos poligonales mayores a cero ($> 0$), frecuencias de cuadro estándar ($24, 30, 60 \text{ FPS}$) y consumos de recursos no negativos.
*   **Ausencia de Comentarios Internos:** Código ejecutable totalmente exento de comentarios internos en cumplimiento con las especificaciones técnicas requeridas.
## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo implementa análisis analítico avanzado utilizando **Window Functions (Funciones de Ventana)** en MySQL para una plataforma de Playlists Musicales. La solución calcula posiciones de popularidad por categoría sin perder la granularidad de los registros individuales y genera marcos acumulativos para la secuenciación de canciones dentro de cada lista de reproducción.

**Organización y Decisiones Técnicas**
*   **Control de Limpieza Previa DDL:**
    - Se agregaron instrucciones `DROP TABLE IF EXISTS` ordenadas de forma inversa a la jerarquía de dependencias (`canciones_playlist` $\rightarrow$ `playlists` / `canciones` $\rightarrow$ `albumes` $\rightarrow$ `artistas`) para asegurar ejecuciones continuas e idempotentes.
*   **Uso de Funciones de Ventana:**
    - `RANK()` y `DENSE_RANK()`: Evalúan la popularidad de las canciones mediante particiones lógicas (`PARTITION BY art.genero_principal` y `PARTITION BY art.artista_id`), ordenando los resultados por el total de reproducciones en orden descendente.
    - `SUM() OVER (...)` con Frame `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`: Calcula la suma acumulada del tiempo de reproducción a medida que avanza la secuencia de la playlist.
    - `AVG() OVER (PARTITION BY p.playlist_id)`: Proporciona la duración promedio global de las pistas pertenecientes a una playlist en cada fila de resultado.
*   **Integridad Referencial y Dominio:**
    - Claves foráneas configuradas con `ON DELETE RESTRICT` y `ON UPDATE CASCADE` en el catálogo musical, y `ON DELETE CASCADE` en la relación M:N de la lista de reproducción para mantener coherencia operativa.
    - Restricciones `CHECK` para duraciones mayores a cero ($> 0$), reproducciones no negativas ($\ge 0$) y años dentro de rango válido ($1950 \text{ a } 2026$).
*   **Ausencia de Comentarios Internos:** Todas las sentencias DDL, DML y DQL se presentan completamente limpias de comentarios en línea siguiendo el estándar profesional fijado.
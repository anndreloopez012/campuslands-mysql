# Solución Ejercicio 002 - Ranking Battle Royale

## Autor
- Evelyn Barrios

## 1. Descripción de la Solución
Esta solución implementa un sistema de base de datos para gestionar el ranking y las estadísticas de jugadores en un juego tipo Battle Royale. El diseño se enfoca en la claridad, la integridad de los datos y la capacidad de generar reportes útiles.

## 2. Decisiones de Diseño
*   **Normalización**: Se han creado tres tablas (`jugadores`, `partidas`, `estadisticas_partida`) para modelar las entidades principales y sus relaciones. Esto evita la redundancia y mejora la consistencia.
*   **Tipos de Datos Adecuados**:
    *   `VARCHAR` para nombres y regiones.
    *   `DATETIME` para fechas de registro y de partida, permitiendo precisión temporal.
    *   `ENUM` para el `estado` del jugador (`Activo`, `Inactivo`, `Baneado`), restringiendo los valores posibles y mejorando la legibilidad.
    *   `DECIMAL(5,2)` para `duracion_minutos` en `partidas` y `DECIMAL(10,2)` para `puntaje_partida` en `estadisticas_partida`, asegurando precisión en valores numéricos con decimales.
    *   `SMALLINT` para `kills`, `deaths`, `asistencias`, `posicion_final` ya que son números enteros relativamente pequeños.
    *   `INT` para `dano_infligido` y `dano_recibido` que pueden ser valores más grandes.
*   **Integridad Referencial**: Se utilizan `FOREIGN KEY` para vincular `estadisticas_partida` con `jugadores` y `partidas`, garantizando que no existan estadísticas huérfanas.
*   **Restricciones de Datos (`CHECK`)**:
    *   `chk_duracion_positiva`: Asegura que la duración de una partida sea siempre mayor a cero.
    *   `chk_stats_no_negativas`: Impide que `kills`, `deaths`, `asistencias`, `dano_infligido`, `dano_recibido` tengan valores negativos.
    *   `chk_posicion_valida`: Garantiza que la `posicion_final` sea un número positivo.
*   **Restricciones de Unicidad (`UNIQUE`)**:
    *   `nickname` en `jugadores` es `UNIQUE` para asegurar que no haya dos jugadores con el mismo alias.
    *   `uc_jugador_partida` en `estadisticas_partida` es `UNIQUE` para evitar que un jugador tenga múltiples entradas de estadísticas para la misma partida.

## 3. Cómo Ejecutar los Scripts
Para recrear la estructura de la base de datos, poblarla con datos y ejecutar las consultas, sigue este orden:

1.  **`ddl/schema.sql`**: Ejecuta este script para crear la base de datos `ranking_br` y sus tablas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-002/resoluciones/evelyn-barrios/ddl/schema.sql
    ```
2.  **`dml/inserts.sql`**: Ejecuta este script para insertar los datos de ejemplo en las tablas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-002/resoluciones/evelyn-barrios/dml/inserts.sql
    ```
3.  **`dql/consultas.sql`**: Ejecuta este script para ver los resultados de las consultas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-002/resoluciones/evelyn-barrios/dql/consultas.sql
    ```

Asegúrate de tener el servidor MySQL corriendo (por ejemplo, con Docker como se indica en el `README.md` principal del repositorio).
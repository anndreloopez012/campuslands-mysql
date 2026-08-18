# Solución Ejercicio 004 - Plataforma de Streaming de Música

## Autor
- Evelyn Barrios

## 1. Descripción de la Solución
Esta solución implementa un esquema de base de datos para una plataforma de streaming de música. El diseño está normalizado para gestionar la información sobre artistas, géneros, álbumes y canciones, y las relaciones entre ellos.

## 2. Decisiones de Diseño
*   **Normalización y Relaciones**:
    *   Se crearon 4 tablas principales: `artistas`, `generos`, `albumes` y `canciones`.
    *   La relación entre `artistas` y `albumes` es de uno a muchos (un artista puede tener muchos álbumes).
    *   La relación entre `albumes` y `canciones` también es de uno a muchos (un álbum contiene muchas canciones).
    *   La tabla `generos` se relaciona con `albumes` para categorizar la música.
*   **Tipos de Datos Adecuados**:
    *   `VARCHAR` para nombres y títulos.
    *   `SMALLINT` para `anio_lanzamiento`, ya que es un número entero pequeño.
    *   `INT` para `duracion_segundos` y `reproducciones`, que pueden ser números más grandes.
*   **Integridad Referencial**: Se utilizan `FOREIGN KEY` para conectar las tablas y asegurar la consistencia de los datos. Por ejemplo, una canción (`canciones`) siempre debe pertenecer a un álbum existente (`albumes`), y un álbum a un artista existente (`artistas`).
*   **Restricciones (`CHECK` y `UNIQUE`)**:
    *   Se utiliza `UNIQUE` en los nombres de artistas y géneros para evitar duplicados.
    *   Se añade una restricción `CHECK` (`chk_duracion_positiva`) para asegurar que la duración de una canción sea siempre un valor positivo.

## 3. Cómo Ejecutar los Scripts
Para recrear la base de datos, poblarla con datos y ejecutar las consultas, sigue este orden:

1.  **`ddl/schema.sql`**: Ejecuta este script para crear la base de datos `music_streaming` y sus tablas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-004/resoluciones/evelyn-barrios/ddl/schema.sql
    ```
2.  **`dml/inserts.sql`**: Ejecuta este script para insertar los datos de ejemplo.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-004/resoluciones/evelyn-barrios/dml/inserts.sql
    ```
3.  **`dql/consultas.sql`**: Ejecuta este script para ver los resultados de las consultas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-004/resoluciones/evelyn-barrios/dql/consultas.sql
    ```

Asegúrate de tener el servidor MySQL corriendo.
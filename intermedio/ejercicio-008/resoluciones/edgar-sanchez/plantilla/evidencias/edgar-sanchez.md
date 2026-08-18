## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aplica las reglas de la Tercera Forma Normal (3FN) sobre el sistema de información de fútbol sala. Para estar en 3FN, el esquema debe estar previamente en 2FN y no deben existir dependencias transitivas (ningún atributo no clave debe depender de otro atributo no clave). Se independizaron los datos de categorías, posiciones y clubes para erradicar la redundancia y asegurar la consistencia del sistema.

**Organización y Decisiones Técnicas**
*   **Eliminación de Dependencias Transitivas (3FN):** 
    - Atributos como `duracion_tiempo_minutos` o `edad_maxima` dependían de la categoría del jugador, no directamente del id del jugador. Se extrajeron a la entidad `categorias_futsal`.
    - La descripción del `rol_tactico` dependía del nombre de la posición. Se aisló en `posiciones_futsal`.
    - Los datos del club (`ciudad`) dependían del nombre del club. Se crearon tablas independientes con claves primarias propias.
*   **Integridad Referencial:** La tabla central `jugadores_futsal` vincula mediante claves foráneas (`FOREIGN KEY`) a las entidades independientes con reglas `ON DELETE RESTRICT ON UPDATE CASCADE` para proteger la pérdida imprevista de catálogos.
*   **Restricción de Unicidad Compuesta:** Se incorporó `uq_jugador_club_numero` para impedir la duplicidad de un mismo número de camiseta dentro de un mismo club.
*   **Ausencia de Comentarios:** Los scripts de base de datos fueron proporcionados sin comentarios internos cumpliendo con los estándares de entrega del proyecto.
## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo modela el sistema de registro e inscripciones para eventos de carreras urbanas. El objetivo central es aplicar restricciones de unicidad (`UNIQUE`) tanto a nivel de columna simple como de clave compuesta para asegurar la integridad de las inscripciones y evitar duplicidades operativas.

**Organización y Decisiones Técnicas**
*   **Uso de Restricciones `UNIQUE` Simples:**
    - `nombre_circuito` en `circuitos_urbanos`: Garantiza que no existan dos competencias registradas con el mismo nombre.
    - `dni_pasaporte` y `email` en `corredores_urbanos`: Impiden la duplicidad de cuentas o perfiles de atletas en la base de datos.
*   **Uso de Restricciones `UNIQUE` Compuestas:**
    - `uq_circuito_corredor`: Garantiza que un mismo corredor no pueda inscribirse más de una vez en el mismo circuito urbano.
    - `uq_circuito_dorsal`: Asegura que el número de dorsal asignado sea único por cada evento/circuito, permitiendo reutilizar dorsales en competencias distintas.
*   **Integridad Referencial y Dominio:** Se aplican llaves foráneas con `ON DELETE RESTRICT ON UPDATE CASCADE` y validaciones `CHECK` para límites de edad, distancias y tiempos de carrera mayores a cero.
*   **Limpieza de Código:** Todo el bloque DDL, DML y DQL se presenta completamente libre de comentarios dentro de las sentencias SQL, cumpliendo estrictamente los requerimientos.
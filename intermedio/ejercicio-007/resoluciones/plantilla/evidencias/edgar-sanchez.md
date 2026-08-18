## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aplica los principios de la Segunda Forma Normal (2FN) sobre el esquema de datos de una liga de fútbol. Para estar en 2FN, el esquema debe estar previamente en 1FN y todos los atributos no clave deben depender por completo de la clave primaria. Se han aislado las entidades independientes (`estadios`, `equipos` y `partidos`) para evitar dependencias parciales que generen redundancia o inconsistencias.

**Organización y Decisiones Técnicas**
*   **Aislamiento y Dependencia Completa (2FN):** Se eliminó la dependencia parcial separando la información de los recintos (`estadios`) de los clubes (`equipos`). La tabla `partidos` almacena únicamente las claves foráneas que identifican el evento y métricas dependientes directamente del encuentro (`goles_local`, `goles_visitante`, `jornada`, `fecha_partido`).
*   **Integridad Referencial y Múltiples Uniones:** La tabla `partidos` posee dos claves foráneas que referencian de forma independiente a la tabla `equipos` (`equipo_local_id` y `equipo_visitante_id`). Además, se agregó la restricción de control `chk_equipos_diferentes` para impedir que un club juegue contra sí mismo.
*   **Consultas Relacionales:** Se utilizaron uniones cruzadas (`INNER JOIN`) asignando alias descriptivos (`el` para local, `ev` para visitante y `es` para recinto) garantizando reportes integrados sin duplicar datos textuales en las tablas del sistema.
*   **Validaciones de Dominio:** Se aplican restricciones `CHECK` para contadores de goles no negativos, rango de jornadas y capacidades reales de infraestructura.
*   **Ausencia de Comentarios:** El código fue entregado limpio, sin comentarios en línea dentro de los comandos SQL DDL, DML o DQL, manteniendo el estándar profesional.
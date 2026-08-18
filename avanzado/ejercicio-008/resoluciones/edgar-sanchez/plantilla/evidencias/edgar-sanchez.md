## Analisis

**Datos del Desarrollador**
*   **Nombre:** Edgar Sánchez
*   **Fecha de ejecución:** 30/07/2026
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo modela el sistema administrativo y estadístico para una liga de Fútbol Sala, enfocándose en la implementación de una arquitectura de seguridad basada en roles y usuarios (`DCL - Data Control Language`). El diseño asegura el principio de menor privilegio (Least Privilege), separando las capacidades de administración general, consulta analítica e ingesta operativa de actas arbitrales.

**Organización y Decisiones Técnicas**
*   **Diseño de Roles (`CREATE ROLE`)**:
    - `rol_administrador_futsal`: Control administrativo completo sobre la base de datos con capacidad de delegación (`WITH GRANT OPTION`).
    - `rol_analista_futsal`: Permisos exclusivos de lectura (`SELECT`) sobre todo el esquema para tareas de Business Intelligence y estadísticas.
    - `rol_operador_actas_futsal`: Permisos de lectura, inserción y actualización (`SELECT`, `INSERT`, `UPDATE`) enfocados en la carga de resultados de partidos y planillas estadísticas, impidiendo la eliminación (`DELETE`) o la modificación del catálogo de equipos/jugadores.
*   **Gestión de Usuarios y Asignación Predeterminada (`SET DEFAULT ROLE`)**: Se crearon usuarios con credenciales de acceso remoto (`'user'@'%'`), asociándoles sus roles específicos y forzando la activación implícita del rol desde el inicio de sesión.
*   **Consistencia y Reglas de Dominio**:
    - La combinación `uq_equipo_dorsal` evita la asignación repetida de un número de camiseta en la misma plantilla.
    - Validación `chk_futsal_equipos_distintos` para prevenir partidos de un equipo contra sí mismo.
*   **Ausencia de Comentarios Internos:** Todas las sentencias de la solución SQL fueron ejecutadas totalmente libres de comentarios en línea para mantener la limpieza y cumplir con los estándares de entrega establecidos.
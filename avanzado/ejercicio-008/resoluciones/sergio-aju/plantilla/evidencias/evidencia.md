# Resolución Ejercicio 008 - Roles y Permisos (Fútbol Sala)

**Autor:** Sergio Miranda Ajú
**Fecha:** Julio 2026

## Descripción del Proyecto
Resolución del módulo avanzado enfocado en el control de acceso basado en roles (RBAC) dentro de MySQL, aplicado a un sistema de gestión de estadísticas de fútbol sala.

## Decisiones Técnicas
- **Control de Acceso (RBAC):** Se implementaron dos roles diferenciados (`rol_analista_futsal` con privilegios estrictos de lectura y `rol_administrador_futsal` con control total DML/DDL), asociados a usuarios independientes para garantizar la seguridad de los datos corporativos o académicos.
- **Tipado y Restricciones:** Se utilizó un campo `ENUM` estricto para definir las posiciones tácticas del fútbol sala (`cierre`, `ala`, `pivot`, `portero`) y los estados del jugador (`activo`, `lesionado`, `suspendido`), previniendo errores de captura.

## Ejecución
Ejecutar los scripts en este orden estricto desde tu gestor con permisos de superusuario (root):
1. `ddl/schema.sql` (Crea la base, tabla, roles y usuarios)
2. `dml/inserts.sql` (Puebla los registros deportivos)
3. `dql/consultas.sql` (Valida los reportes analíticos y la sesión de roles)
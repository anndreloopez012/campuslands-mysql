# Ejercicio 008 (Avanzado) - Selvin Lem

## Tematica
Futbol sala

## Como ejecutar
1. Ejecutar `ddl/schema.sql`: crea la tabla y 3 usuarios con distintos
   GRANT (admin, entrenador, lector). Requiere privilegios de root
   si el usuario campus no tiene permiso para CREATE USER/GRANT.
2. Ejecutar `dml/inserts.sql`: inserta 8 registros y aplica un REVOKE
   de UPDATE al usuario entrenador.
3. Ejecutar `dql/consultas.sql`: verifica privilegios con SHOW GRANTS.

## Entidad principal
- Tabla: futsal_staff
- Usuarios: futsal_admin, futsal_entrenador, futsal_lector

## Restriccion aplicada
Principio de menor privilegio: cada usuario tiene solo los permisos
necesarios para su rol (SELECT/INSERT/UPDATE/DELETE segun cargo).

## Caso limite incluido
REVOKE UPDATE sobre futsal_entrenador despues de haberlo otorgado,
verificado con SHOW GRANTS mostrando que solo queda SELECT.

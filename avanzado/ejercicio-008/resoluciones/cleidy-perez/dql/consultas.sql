-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    r.nombre_rol,
    p.modulo,
    p.accion
FROM Roles r
JOIN PermisosUsuario p ON r.rol_id = p.rol_id;

SELECT 
    r.nombre_rol,
    p.modulo,
    p.accion
FROM Roles r
JOIN PermisosUsuario p ON r.rol_id = p.rol_id
WHERE r.nombre_rol = 'Arbitro';
-- 1. Ver todos los jugadores (cualquier usuario)
SELECT * FROM `ejercicio-008-adv-jugadores`;

-- 2. Ver usuarios y roles
SELECT username, rol FROM `ejercicio-008-adv_usuarios`;

-- 3. Verificar permisos de admin (puede todo)
CALL `sp_verificar_permiso`('admin', 'DELETE');

-- 4. Verificar permisos de entrenador (no puede eliminar)
CALL `sp_verificar_permiso`('entrenador', 'DELETE');

-- 5. Verificar permisos de consulta (solo lectura)
CALL `sp_verificar_permiso`('consulta', 'UPDATE');

-- 6. Datos según rol (ejemplo práctico)
SELECT j.*, u.rol 
FROM `ejercicio-008-adv-jugadores` j
CROSS JOIN `ejercicio-008-adv_usuarios` u
WHERE u.username = 'entrenador';

-- 7. Insertar nuevo jugador (simulado con validación)
INSERT INTO `ejercicio-008-adv-jugadores` 
(nombre, equipo, posicion, goles, asistencias, partidos) VALUES 
('Jugador Nuevo', 'Fury FC', 'delantero', 0, 0, 0);

-- 8. Ver resultado final
SELECT * FROM `ejercicio-008-adv-jugadores`;
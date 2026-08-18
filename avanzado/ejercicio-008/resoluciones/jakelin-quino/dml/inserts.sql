-- Datos de jugadores
INSERT INTO `ejercicio-008-adv-jugadores` 
(nombre, equipo, posicion, goles, asistencias, partidos) VALUES 
('Carlos Díaz', 'Fury FC', 'delantero', 15, 8, 12),
('María Rivas', 'Fury FC', 'defensa', 3, 10, 12),
('Juan Mora', 'Fury FC', 'portero', 0, 2, 12),
('Ana Torres', 'Wolves FC', 'delantero', 18, 5, 12),
('Luis Soto', 'Wolves FC', 'defensa', 4, 8, 12),
('Sofía Cruz', 'Wolves FC', 'portero', 0, 1, 12),
('David Ruiz', 'Knights FC', 'delantero', 12, 10, 10),
('Elena Gil', 'Knights FC', 'defensa', 2, 7, 12),
('Pedro Solis', 'Knights FC', 'portero', 0, 0, 8);

-- Usuarios con roles
INSERT INTO `ejercicio-008-adv_usuarios` 
(username, password, rol) VALUES 
('admin', 'admin123', 'administrador'),
('entrenador', 'ent123', 'entrenador'),
('consulta', 'con123', 'consultor');

-- Procedimiento para verificar permisos
DELIMITER //
CREATE PROCEDURE `sp_verificar_permiso`(IN p_username VARCHAR(30), IN p_accion VARCHAR(20))
BEGIN
    DECLARE v_rol VARCHAR(20);
    SELECT rol INTO v_rol FROM `ejercicio-008-adv_usuarios` 
    WHERE username = p_username AND activo = 1;
    
    IF v_rol = 'administrador' THEN
        SELECT 'Acceso completo permitido' AS mensaje;
    ELSEIF v_rol = 'entrenador' AND p_accion != 'DELETE' THEN
        SELECT 'Acceso parcial permitido (no puede eliminar)' AS mensaje;
    ELSEIF v_rol = 'consultor' AND p_accion = 'SELECT' THEN
        SELECT 'Acceso solo lectura permitido' AS mensaje;
    ELSE
        SELECT 'Acceso denegado para esta acción' AS mensaje;
    END IF;
END //
DELIMITER ;
-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Roles (nombre_rol, descripcion) VALUES
('Administrador', 'Acceso total al sistema de la liga'),
('Arbitro', 'Gestion de actas de partidos y tarjetas'),
('Delegado Equipo', 'Inscripcion de jugadores y consulta de sanciones');

INSERT INTO PermisosUsuario (rol_id, modulo, accion) VALUES
(1, 'Jugadores', 'Crear'),
(1, 'Jugadores', 'Eliminar'),
(1, 'Partidos', 'Crear'),
(2, 'Partidos', 'Actualizar'),
(2, 'Actas', 'Crear'),
(3, 'Jugadores', 'Crear'),
(3, 'Partidos', 'Leer');
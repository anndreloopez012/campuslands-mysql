USE campuslands_mysql;

INSERT INTO futsal_staff (nombre_staff, cargo, equipo, fecha_ingreso, estado) VALUES
('Carlos Mux',   'director',       'Halcones Sala',  '2023-01-15', 'activo'),
('Diana Us',     'entrenador',     'Halcones Sala',  '2023-02-01', 'activo'),
('Marco Tul',    'fisioterapeuta', 'Furia Interior', '2022-11-10', 'activo'),
('Ana Perez',    'utilero',        'Furia Interior', '2023-03-05', 'activo'),
('Luis Coy',     'entrenador',     'Rayo Central',   '2022-06-20', 'activo'),
('Elena Xoc',    'director',       'Rayo Central',   '2021-09-01', 'inactivo'),
('Pablo Say',    'fisioterapeuta', 'Titanes Sala',   '2023-04-12', 'activo'),
('Karla Toc',    'utilero',        'Titanes Sala',   '2023-05-01', 'activo');

-- Revocar un privilegio especifico (caso limite: reducir permisos ya otorgados)
REVOKE UPDATE ON campuslands_mysql.futsal_staff FROM 'futsal_entrenador'@'%';
FLUSH PRIVILEGES;
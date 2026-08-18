-- Datos de práctica. Se pueden modificar o agregar más registros.
USE campuslands_mysql;

-- Insertar departamentos
INSERT INTO departamentos (nombre, ubicacion) VALUES
('Recursos Humanos', 'Edificio A, Piso 3'),
('Desarrollo de Software', 'Edificio B, Piso 5'),
('Marketing', 'Edificio A, Piso 2'),
('Ventas', 'Edificio C, Piso 1'),
('Soporte Técnico', 'Edificio B, Piso 1');

-- Insertar empleados
INSERT INTO empleados (nombre, apellido, email, fecha_contratacion, salario, id_departamento, estado) VALUES
('Juan', 'Pérez', 'juan.perez@empresa.com', '2020-01-15', 60000.00, (SELECT id FROM departamentos WHERE nombre = 'Desarrollo de Software'), 'activo'),
('María', 'García', 'maria.garcia@empresa.com', '2019-03-20', 55000.00, (SELECT id FROM departamentos WHERE nombre = 'Marketing'), 'activo'),
('Pedro', 'Rodríguez', 'pedro.rodriguez@empresa.com', '2021-07-01', 75000.00, (SELECT id FROM departamentos WHERE nombre = 'Desarrollo de Software'), 'activo'),
('Ana', 'López', 'ana.lopez@empresa.com', '2018-11-10', 48000.00, (SELECT id FROM departamentos WHERE nombre = 'Recursos Humanos'), 'activo'),
('Carlos', 'Martínez', 'carlos.martinez@empresa.com', '2022-05-01', 52000.00, (SELECT id FROM departamentos WHERE nombre = 'Ventas'), 'activo'),
('Laura', 'Fernández', 'laura.fernandez@empresa.com', '2020-09-01', 68000.00, (SELECT id FROM departamentos WHERE nombre = 'Desarrollo de Software'), 'licencia'),
('Miguel', 'Sánchez', 'miguel.sanchez@empresa.com', '2017-02-14', 45000.00, (SELECT id FROM departamentos WHERE nombre = 'Soporte Técnico'), 'activo'),
('Sofía', 'Ramírez', 'sofia.ramirez@empresa.com', '2023-01-01', 50000.00, (SELECT id FROM departamentos WHERE nombre = 'Marketing'), 'activo'),
('David', 'Gómez', 'david.gomez@empresa.com', '2019-06-01', 70000.00, (SELECT id FROM departamentos WHERE nombre = 'Desarrollo de Software'), 'activo'),
('Elena', 'Díaz', 'elena.diaz@empresa.com', '2022-03-15', 49000.00, (SELECT id FROM departamentos WHERE nombre = 'Recursos Humanos'), 'inactivo'); -- Empleado inactivo
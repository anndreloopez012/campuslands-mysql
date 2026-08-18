-- Datos de práctica. Se pueden modificar o agregar más registros.
USE campuslands_mysql;

-- Insertar paracaidistas
INSERT INTO paracaidistas (nombre, apellido, licencia, fecha_registro, estado) VALUES
('Carlos', 'Gómez', 'LIC-001', '2021-03-10', 'activo'),
('Laura', 'Pérez', 'LIC-002', '2022-01-20', 'activo'),
('Miguel', 'Díaz', 'LIC-003', '2020-07-05', 'activo'),
('Sofía', 'Ruiz', 'LIC-004', '2023-02-15', 'activo'),
('Javier', 'Sánchez', 'LIC-005', '2019-11-01', 'suspendido'), -- Paracaidista suspendido
('Ana', 'Martínez', 'LIC-006', '2022-09-28', 'activo');

-- Insertar saltos
INSERT INTO saltos (id_paracaidista, fecha_salto, altura_metros, tipo_salto, duracion_segundos, estado_clima, observaciones) VALUES
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-001'), '2024-07-01', 4000, 'solo', 60, 'Soleado', 'Salto de práctica exitoso.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-002'), '2024-07-01', 3000, 'tandem', 45, 'Nublado', 'Primer salto tandem con instructor.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-003'), '2024-07-02', 4000, 'formacion', 70, 'Soleado', 'Formación de 4 vías.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-001'), '2024-07-03', 4000, 'solo', 65, 'Viento moderado', 'Aterrizaje suave.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-004'), '2024-07-03', 3500, 'solo', 55, 'Soleado', 'Salto con nueva equipación.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-003'), '2024-07-04', 4000, 'exhibicion', 80, 'Soleado', 'Salto para evento local.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-002'), '2024-07-05', 3000, 'tandem', 50, 'Lluvia ligera', 'Salto cancelado por mal tiempo.'), -- Ejemplo de salto con mal clima
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-006'), '2024-07-06', 4000, 'solo', 62, 'Soleado', 'Salto de rutina.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-001'), '2024-07-07', 4000, 'solo', 68, 'Soleado', 'Práctica de aterrizaje de precisión.'),
((SELECT id FROM paracaidistas WHERE licencia = 'LIC-004'), '2024-07-08', 3800, 'formacion', 75, 'Nublado', 'Formación de 2 vías.');
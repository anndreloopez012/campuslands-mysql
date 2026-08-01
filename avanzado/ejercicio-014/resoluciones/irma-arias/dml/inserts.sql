-- DML: Inserción de datos para la saga de ciencia ficción
USE db_saga_scifi;

INSERT INTO eventos_scifi (codigo_evento, titulo_evento, tipo_mision, fecha_estelar, duracion_dias, presupuesto_millones, estado) VALUES
('SCI-01', 'Colonizacion de Marte', 'Exploracion', '2045-06-15', 180, 450.50, 'completada'),
('SCI-02', 'Expedicion Lunas de Saturno', 'Investigacion', '2048-09-20', 365, 890.00, 'en_curso'),
('SCI-03', 'Contacto en Proxima Centauri', 'Diplomacia', '2055-01-10', 730, 1500.25, 'planificada'),
('SCI-04', 'Rescate en el Cinturon de Asteroides', 'Emergencia', '2046-11-05', 45, 120.00, 'completada'),
('SCI-05', 'Mapeo del Agujero Negro Cygnus', 'Cientifica', '2050-03-22', 500, 2100.00, 'planificada'),
('SCI-06', 'Estacion Orbital Titán', 'Construccion', '2047-08-12', 250, 680.75, 'completada'),
('SCI-07', 'Sonda de Busqueda de IA Extraterrestre', 'Tecnologia', '2049-05-30', 120, 300.00, 'en_curso'),
('SCI-08', 'Evacuacion Puesto Avanzado Kepler', 'Emergencia', '2044-12-01', 30, 95.50, 'cancelada');
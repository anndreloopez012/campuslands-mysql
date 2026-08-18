INSERT INTO constructores (nombre, pais_origen, anio_fundacion) VALUES
('Bugatti', 'Francia', 1909),
('Koenigsegg', 'Suecia', 1994),
('Rimac Automobili', 'Croacia', 2009);

INSERT INTO modelos_hiperdeportivos (constructor_id, nombre_modelo, precio_base_usd, unidades_producidas) VALUES
(1, 'Chiron Super Sport 300+', 3900000.00, 30),
(2, 'Jesko Absolut', 3400000.00, 125),
(3, 'Nevera', 2400000.00, 150);

INSERT INTO especificaciones_tecnicas (modelo_id, potencia_hp, torque_nm, velocidad_max_kmh, aceleracion_0_100, tipo_propulsion) VALUES
(1, 1600, 1600, 490, 2.40, 'Combustión'),
(2, 1600, 1500, 500, 2.50, 'Combustión'),
(3, 1914, 2360, 412, 1.81, 'Eléctrico');

INSERT INTO pruebas_rendimiento (modelo_id, pista_nombre, tiempo_lap_segundos, fecha_prueba) VALUES
(1, 'Ehra-Lessien', 142.350, '2025-05-12'),
(2, 'Gothenburg Aerodrome', 138.120, '2025-06-18'),
(3, 'Nürburgring Nordschleife', 425.298, '2025-08-22'),
(3, 'ATP Automotive Testing Papenburg', 103.800, '2025-09-10');


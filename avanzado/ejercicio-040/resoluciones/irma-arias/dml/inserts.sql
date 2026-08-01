-- DML: Inserción de datos para carreras urbanas
USE db_carreras_urbanas;

INSERT INTO carreras_urbanas (codigo_carrera, nombre_carrera, distancia_km, participantes_inscritos, recaudacion_total, estado_carrera) VALUES
('RUN-01', 'Maratón de la Ciudad', 42.195, 3500, 175000.00, 'abierta'),
('RUN-02', 'Media Maratón Nocturna', 21.097, 2200, 88000.00, 'abierta'),
('RUN-03', 'Carrera 10K Centro Histórico', 10.00, 1800, 45000.00, 'en_curso'),
('RUN-04', 'Correcaminos 5K Familiar', 5.00, 1200, 24000.00, 'finalizada'),
('RUN-05', 'Desafío de Colinas 15K', 15.00, 950, 38000.00, 'abierta'),
('RUN-06', 'Sprint Urbano 3K', 3.00, 600, 9000.00, 'finalizada'),
('RUN-07', 'Ultra Maratón Metropolitana', 50.00, 400, 32000.00, 'abierta'),
('RUN-08', 'Carrera Rosa 5K', 5.00, 2500, 50000.00, 'suspendida');
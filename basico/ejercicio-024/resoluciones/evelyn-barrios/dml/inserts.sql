-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE academia_soldadura;

INSERT INTO inspecciones_soldadura (proyecto_nombre, soldador_id, fecha_inspeccion, tipo_junta, resultado, defectos_encontrados) VALUES
('Puente Metálico Alfa', 101, '2025-07-15', 'A tope', 'Aprobado', 0),
('Estructura Edificio Beta', 102, '2025-07-16', 'En ángulo', 'Rechazado', 3),
('Chasis Vehicular Gamma', 101, '2025-07-18', 'A tope', 'Aprobado', 1),
('Puente Metálico Alfa', 103, '2025-07-20', 'Solape', 'Aprobado', 0),
('Estructura Edificio Beta', 102, '2025-07-21', 'En ángulo', 'Reparado', 0),
('Tubería Industrial Delta', 104, '2025-07-22', 'A tope', 'Rechazado', 5),
('Puente Metálico Alfa', 103, '2025-07-24', 'En T', 'Aprobado', 0),
('Tubería Industrial Delta', 104, '2025-07-25', 'A tope', 'Reparado', 0);

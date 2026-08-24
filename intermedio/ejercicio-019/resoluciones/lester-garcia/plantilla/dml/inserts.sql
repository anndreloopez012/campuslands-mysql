USE ejercicio_19_int;

INSERT INTO paracaidistas (nombre, nivel, horas_vuelo
) VALUES
('Carlos Méndez', 'Avanzado', 185),
('Laura Gómez', 'Intermedio', 75),
('Andrés Castillo', 'Principiante', 12),
('María Torres', 'Avanzado', 230),
('Daniel Herrera', 'Intermedio', 95),
('Sofía Morales', 'Principiante', 8),
('Julián Vargas', 'Avanzado', 160),
('Camila Rojas', 'Intermedio', 60);

INSERT INTO instructores ( nombre, especialidad, experiencia_anios
) VALUES
('Ricardo Salazar', 'Salto tándem', 12),
('Natalia Pérez', 'Caída libre', 9),
('Miguel Torres', 'Formación en vuelo', 15),
('Alejandro Ruiz', 'Salto tándem', 7),
('Valentina Castro', 'Seguridad aérea', 11),
('Jorge Ramírez', 'Caída libre', 10);

INSERT INTO zonas_salto (nombre, ciudad, altura_salto_metros
) VALUES
('Cañón del Viento', 'Bogotá', 12000),
('Valle Extremo', 'Medellín', 10000),
('Costa Azul', 'Cartagena', 9000),
('Montaña Libre', 'Manizales', 11000),
('Horizonte Andino', 'Pereira', 10500),
('Cielo Dorado', 'Cali', 9500);

INSERT INTO saltos ( id_instructor, id_zona, fecha_salto, tipo_salto, costo
) VALUES
(1, 1, '2026-08-01', 'Tándem', 850000.00),
(2, 2, '2026-08-02', 'Caída libre', 720000.00),
(3, 4, '2026-08-03', 'Formación', 950000.00),
(1, 3, '2026-08-05', 'Tándem', 800000.00),
(4, 1, '2026-08-06', 'Tándem', 850000.00),
(2, 5, '2026-08-08', 'Caída libre', 750000.00),
(3, 4, '2026-08-10', 'Formación', 980000.00),
(5, 6, '2026-08-12', 'Seguridad', 650000.00),
(6, 2, '2026-08-14', 'Caída libre', 730000.00),
(1, 1, '2026-08-15', 'Tándem', 850000.00);

INSERT INTO participantes_salto (id_salto, id_paracaidista,resultado
) VALUES
(1, 1, 'Exitoso'),
(1, 3, 'Exitoso'),
(1, 6, 'Exitoso'),

(2, 2, 'Exitoso'),
(2, 5, 'Exitoso'),

(3, 1, 'Exitoso'),
(3, 4, 'Exitoso'),
(3, 7, 'Exitoso'),

(4, 3, 'Exitoso'),
(4, 6, 'Reprogramado'),

(5, 1, 'Exitoso'),
(5, 2, 'Exitoso'),
(5, 8, 'Exitoso'),

(6, 5, 'Exitoso'),
(6, 8, 'Exitoso'),

(7, 4, 'Exitoso'),
(7, 7, 'Exitoso'),

(8, 6, 'Cancelado'),

(9, 2, 'Exitoso'),
(9, 5, 'Exitoso'),

(10, 1, 'Exitoso'),
(10, 4, 'Exitoso'),
(10, 7, 'Exitoso');
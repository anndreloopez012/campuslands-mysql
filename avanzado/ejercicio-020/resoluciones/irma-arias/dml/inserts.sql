-- DML: Inserción de datos para citas y tatuajes
USE db_estudio_tatuajes;

INSERT INTO citas_tatuajes (codigo_cita, nombre_cliente, estilo_tatuaje, horas_estimadas, precio_dolares, estado) VALUES
('TAT-01', 'Gabriel Vega', 'Realismo', 6, 650.00, 'completado'),
('TAT-02', 'Mariana Paz', 'Traditional', 3, 300.00, 'completado'),
('TAT-03', 'Esteban Lasso', 'Blackwork', 5, 500.00, 'en_proceso'),
('TAT-04', 'Valeria Cárdenas', 'Neo Traditional', 4, 450.00, 'pendiente'),
('TAT-05', 'Julian Silva', 'Japonés', 8, 900.00, 'completado'),
('TAT-06', 'Daniela Orozco', 'Minimalista', 2, 180.00, 'pendiente'),
('TAT-07', 'Mauricio Soto', 'Realismo', 7, 800.00, 'cancelado'),
('TAT-08', 'Tatiana Gomez', 'Blackwork', 4, 400.00, 'en_proceso');
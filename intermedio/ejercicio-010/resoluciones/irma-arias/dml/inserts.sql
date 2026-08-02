USE carreras_urbanas_db;

INSERT INTO categorias_carrera (nombre_categoria, distancia_km) VALUES
('Sprint 5K', 5.00),
('Media Maratón', 21.09),
('Maratón Completa', 42.19),
('Corre-Caminata 3K', 3.00);

INSERT INTO corredores_urbanos (nombre_corredor, email, dorsal, id_categoria, estado) VALUES
('Eliud Kipchoge', 'eliud.kipchoge@runner.com', 101, 3, 'finalizado'),
('Kenenisa Bekele', 'kenenisa.bekele@runner.com', 102, 3, 'finalizado'),
('Mo Farah', 'mo.farah@runner.com', 201, 2, 'inscrito'),
('Sifan Hassan', 'sifan.hassan@runner.com', 202, 2, 'inscrito'),
('Beatrice Chebet', 'beatrice.chebet@runner.com', 501, 1, 'inscrito'),
('Jakob Ingebrigtsen', 'jakob.ingebrigtsen@runner.com', 502, 1, 'finalizado'),
('Laura Muir', 'laura.muir@runner.com', 301, 4, 'retirado'),
('Yomif Kejelcha', 'yomif.kejelcha@runner.com', 302, 4, 'inscrito');

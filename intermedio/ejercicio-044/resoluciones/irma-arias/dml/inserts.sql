USE saga_ciencia_ficcion_db;

INSERT INTO sistemas_estelares (nombre_sistema, sector_galactico) VALUES
('Tatooine', 'Borde Exterior'),
('Coruscant', 'Núcleo Galáctico'),
('Krypton', 'Sector Andrómeda'),
('Vulcan', 'Cuadrante Alfa');

INSERT INTO facciones (nombre_faccion, lider_faccion) VALUES
('Alianza Rebelde', 'Mon Mothma'),
('Imperio Galáctico', 'Emperador Palpatine'),
('Casa El', 'Jor-El'),
('Alto Mando Vulcaniano', 'TPau');

INSERT INTO peliculas_saga (titulo_pelicula, anio_estreno, presupuesto_millones, calificacion_critica, id_sistema, id_faccion, estado_saga) VALUES
('Episodio IV: Una Nueva Esperanza', 1977, 11.00, 8.6, 1, 1, 'canon'),
('Episodio V: El Imperio Contraataca', 1980, 18.00, 8.7, 1, 1, 'canon'),
('Episodio VI: El Retorno del Jedi', 1983, 32.50, 8.3, 2, 1, 'canon'),
('Rogue One: Una Historia de Star Wars', 2016, 200.00, 7.8, 1, 1, 'canon'),
('El Hombre de Acero', 2013, 225.00, 7.1, 3, 3, 'leyenda'),
('Star Trek: La Película', 1979, 45.00, 6.5, 4, 4, 'alternativo'),
('Star Trek: Primer Contacto', 1996, 45.00, 7.6, 4, 4, 'canon'),
('Episodio VII: El Despertar de la Fuerza', 2015, 306.00, 7.9, 2, 2, 'canon');

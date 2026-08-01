-- DML: Inserción de datos para el catálogo de películas de terror
USE db_peliculas_miedo;

INSERT INTO peliculas_terror (codigo_pelicula, titulo, subgenero, anio_estreno, calificacion_imdb, vistas, estado) VALUES
('HOR-01', 'El Conjuro', 'Sobrenatural', 2013, 7.5, 340000, 'disponible'),
('HOR-02', 'El Exorcista', 'Posesión', 1973, 8.1, 450000, 'disponible'),
('HOR-03', 'Hereditary', 'Psicológico', 2018, 7.3, 210000, 'disponible'),
('HOR-04', 'La Sustancia', 'Body Horror', 2024, 7.8, 180000, 'proximamente'),
('HOR-05', 'It Follows', 'Sobrenatural', 2014, 6.8, 150000, 'agotada'),
('HOR-06', 'Halloween', 'Slasher', 1978, 7.7, 290000, 'disponible'),
('HOR-07', 'Smile', 'Psicológico', 2022, 6.5, 230000, 'disponible'),
('HOR-08', 'Terrifier 3', 'Gore / Slasher', 2024, 6.9, 120000, 'retirada');
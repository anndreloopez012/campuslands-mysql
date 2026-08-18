CREATE TABLE peliculas_terror (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    subgenero VARCHAR(50) NOT NULL CHECK (subgenero IN ('Slasher', 'Paranormal', 'Gore', 'Terror Psicológico', 'Monstruos', 'Zombie')),
    anio_estreno INT NOT NULL CHECK (anio_estreno BETWEEN 1900 AND 2026),
    duracion_minutos INT NOT NULL CHECK (duracion_minutos > 0),
    clasificacion_edad VARCHAR(10) NOT NULL CHECK (clasificacion_edad IN ('PG-13', 'R', 'NC-17')),
    calificacion_audiencia DECIMAL(3,1) NOT NULL DEFAULT 0.0 CHECK (calificacion_audiencia BETWEEN 0.0 AND 10.0),
    estado_disponibilidad VARCHAR(25) NOT NULL DEFAULT 'En Cartelera' CHECK (estado_disponibilidad IN ('En Cartelera', 'Streaming', 'Archivada', 'Proximamente', 'Retirada'))
);
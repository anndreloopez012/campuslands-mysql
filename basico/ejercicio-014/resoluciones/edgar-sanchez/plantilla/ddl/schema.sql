CREATE TABLE lanzamientos_saga (
    lanzamiento_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_obra VARCHAR(100) NOT NULL,
    tipo_obra VARCHAR(30) NOT NULL CHECK (tipo_obra IN ('Pelicula', 'Serie', 'Libro', 'Comic')),
    fecha_publicacion DATE NOT NULL,
    cronologia_universo INT NOT NULL,
    ingresos_millones DECIMAL(8,2) NOT NULL DEFAULT 0.00 CHECK (ingresos_millones >= 0.00),
    estado_canon VARCHAR(20) NOT NULL DEFAULT 'Canon' CHECK (estado_canon IN ('Canon', 'Leyendas'))
);

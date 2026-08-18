-- Insertar películas
INSERT INTO `ejercicio-013-int-peliculas` VALUES 
(1, 'El Exorcista', 'William Friedkin', 1973, 122),
(2, 'El Resplandor', 'Stanley Kubrick', 1980, 146),
(3, 'Halloween', 'John Carpenter', 1978, 91),
(4, 'Scream', 'Wes Craven', 1996, 111),
(5, 'El Conjuro', 'James Wan', 2013, 112);

-- Insertar categorías
INSERT INTO `ejercicio-013-int-categorias` VALUES 
(1, 'terror'),
(2, 'slasher'),
(3, 'sobrenatural'),
(4, 'clásico');

-- Insertar relaciones (tabla puente)
INSERT INTO `ejercicio-013-int_pelicula_categoria` VALUES 
(1, 1, 1),
(2, 1, 4),
(3, 2, 1),
(4, 3, 1),
(5, 3, 2),
(6, 4, 2),
(7, 5, 1),
(8, 5, 3);
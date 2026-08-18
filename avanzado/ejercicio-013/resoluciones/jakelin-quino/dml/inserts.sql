-- Películas con datos JSON
INSERT INTO `ejercicio-013-adv-peliculas` 
(titulo, director, año, detalles) VALUES 
('El Exorcista', 'William Friedkin', 1973, 
 '{"genero": "terror", "duracion": 122, "calificacion": 4.80, "premios": ["Oscar", "Globo de Oro"]}'),
 
('El Resplandor', 'Stanley Kubrick', 1980, 
 '{"genero": "terror", "duracion": 146, "calificacion": 4.70, "premios": ["Saturn Award"]}'),
 
('Halloween', 'John Carpenter', 1978, 
 '{"genero": "slasher", "duracion": 91, "calificacion": 4.50, "premios": []}'),
 
('Scream', 'Wes Craven', 1996, 
 '{"genero": "slasher", "duracion": 111, "calificacion": 4.30, "premios": ["MTV Movie Award"]}'),
 
('El Conjuro', 'James Wan', 2013, 
 '{"genero": "terror", "duracion": 112, "calificacion": 4.60, "premios": ["People\'s Choice Award"]}');
-- Datos de practica para catalogo de peliculas de miedo (JSON).
USE campuslands_mysql;

INSERT INTO avanzado_ejercicio_013_peliculas (titulo, director, anio_estreno, detalles_json) 
    VALUES
    ('El Exorcista', 'William Friedkin', 1973, '{"reparto": ["Linda Blair", "Ellen Burstyn"], "subgeneros": ["Posesion", "Sobrenatural"], "calificaciones": {"imdb": 8.1, "metacritic": 81}, "basada_en_hechos_reales": true}'),
    ('Hereditary', 'Ari Aster', 2018, '{"reparto": ["Toni Collette", "Alex Wolff"], "subgeneros": ["Terror Psicologico", "Cultos"], "calificaciones": {"imdb": 7.3, "metacritic": 87}, "basada_en_hechos_reales": false}'),
    ('El Conjuro', 'James Wan', 2013, '{"reparto": ["Vera Farmiga", "Patrick Wilson"], "subgeneros": ["Sobrenatural", "Casas Embrujadas"], "calificaciones": {"imdb": 7.5, "metacritic": 68}, "basada_en_hechos_reales": true}'),
    ('Halloween', 'John Carpenter', 1978, '{"reparto": ["Jamie Lee Curtis", "Donald Pleasence"], "subgeneros": ["Slasher", "Suspenso"], "calificaciones": {"imdb": 7.7, "metacritic": 87}, "basada_en_hechos_reales": false}'),
    ('It (Eso)', 'Andy Muschietti', 2017, '{"reparto": ["Bill Skarsgard", "Jaeden Martell"], "subgeneros": ["Monstruos", "Sobrenatural"], "calificaciones": {"imdb": 7.3, "metacritic": 69}, "basada_en_hechos_reales": false}'),
    ('La Masacre de Texas', 'Tobe Hooper', 1974, '{"reparto": ["Marilyn Burns", "Gunnar Hansen"], "subgeneros": ["Slasher", "Gore"], "calificaciones": {"imdb": 7.4, "metacritic": 87}, "basada_en_hechos_reales": true}'),
    ('Scream', 'Wes Craven', 1996, '{"reparto": ["Neve Campbell", "Courteney Cox"], "subgeneros": ["Slasher", "Meta-Terror"], "calificaciones": {"imdb": 7.4, "metacritic": 65}, "basada_en_hechos_reales": false}'),
    ('¡Huye! (Get Out)', 'Jordan Peele', 2017, '{"reparto": ["Daniel Kaluuya", "Allison Williams"], "subgeneros": ["Terror Psicologico", "Suspenso"], "calificaciones": {"imdb": 7.8, "metacritic": 85}, "basada_en_hechos_reales": false}'),
    ('El Resplandor', 'Stanley Kubrick', 1980, '{"reparto": ["Jack Nicholson", "Shelley Duvall"], "subgeneros": ["Terror Psicologico", "Sobrenatural"], "calificaciones": {"imdb": 8.4, "metacritic": 66}, "basada_en_hechos_reales": false}'),
    ('El proyecto de la bruja de Blair', 'Daniel Myrick', 1999, '{"reparto": ["Heather Donahue", "Michael C. Williams"], "subgeneros": ["Metraje Encontrado", "Sobrenatural"], "calificaciones": {"imdb": 6.5, "metacritic": 81}, "basada_en_hechos_reales": false}');
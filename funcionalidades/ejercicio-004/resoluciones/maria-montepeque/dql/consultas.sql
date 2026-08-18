-- funcionalidades/ejercicio-004 - maria-montepeque
USE campuslands_mysql;

-- 1. Estado inicial: los ids fueron asignados solos por AUTO_INCREMENT (1 al 8)
SELECT id, titulo, artista FROM canciones_playlist ORDER BY id;

-- 2. Insertar sin indicar id y consultar cual genero MySQL con LAST_INSERT_ID()
INSERT INTO canciones_playlist (titulo, artista, genero, duracion_segundos)
VALUES ('Onda Expansiva', 'Byte Beat', 'Electronica', 210);

SELECT LAST_INSERT_ID() AS id_generado;

-- 3. Ver el contador interno de AUTO_INCREMENT antes de borrar nada
SELECT AUTO_INCREMENT AS siguiente_id
FROM information_schema.TABLES
WHERE table_schema = 'campuslands_mysql' AND table_name = 'canciones_playlist';

-- 4. Borrar una cancion existente (id 3) e insertar otra: el id borrado NO se reutiliza
DELETE FROM canciones_playlist WHERE id = 3;

INSERT INTO canciones_playlist (titulo, artista, genero, duracion_segundos)
VALUES ('Reinicio', 'Sofia Duarte', 'Pop', 199);

SELECT id, titulo, artista FROM canciones_playlist ORDER BY id;

-- 5. Reservar un bloque de ids para la "Temporada 2" con ALTER TABLE ... AUTO_INCREMENT
ALTER TABLE canciones_playlist AUTO_INCREMENT = 100;

INSERT INTO canciones_playlist (titulo, artista, genero, duracion_segundos)
VALUES ('Inicio Temporada 2', 'Renata Solis', 'Indie', 205);

-- 6. Insertar una cancion mas SIN indicar id: confirma que el contador sigue solo desde 100 (no vuelve a 11)
INSERT INTO canciones_playlist (titulo, artista, genero, duracion_segundos)
VALUES ('Segunda Pista T2', 'Marco Reyes', 'Reggaeton', 188);

SELECT id, titulo, artista FROM canciones_playlist ORDER BY id;

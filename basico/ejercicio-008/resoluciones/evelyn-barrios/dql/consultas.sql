-- basico/ejercicio-008 - evelyn-barrios
-- Práctica de la sentencia UPDATE
USE campuslands_mysql;

-- Antes de cualquier cambio, veamos el estado inicial de la tabla.
SELECT * FROM jugadores_futsal;

-- Escenario 1: Actualizar las estadísticas de un jugador después de un partido.
-- Ricardinho anotó 2 goles y dio 3 asistencias en el último partido.
UPDATE jugadores_futsal
SET
    goles_anotados = goles_anotados + 2,
    asistencias = asistencias + 3
WHERE nombre_jugador = 'Ricardo "Ricardinho" Braga';

-- Verificamos el cambio para Ricardinho.
SELECT nombre_jugador, goles_anotados, asistencias FROM jugadores_futsal WHERE id = 1;


-- Escenario 2: Un jugador se lesiona.
-- Sergio Lozano ha sufrido una lesión y su estado cambia a 'Lesionado'.
UPDATE jugadores_futsal
SET estado = 'Lesionado'
WHERE nombre_jugador = 'Sergio Lozano';

-- Verificamos el cambio de estado.
SELECT nombre_jugador, estado FROM jugadores_futsal WHERE nombre_jugador = 'Sergio Lozano';


-- Escenario 3: Un jugador es sancionado.
-- Pola recibió una tarjeta amarilla y una roja en el mismo partido, por lo que queda sancionado.
UPDATE jugadores_futsal
SET
    tarjetas_amarillas = tarjetas_amarillas + 1,
    tarjetas_rojas = tarjetas_rojas + 1,
    estado = 'Sancionado'
WHERE nombre_jugador = 'Adrián "Pola" Alonso';

-- Verificamos la sanción.
SELECT nombre_jugador, tarjetas_amarillas, tarjetas_rojas, estado FROM jugadores_futsal WHERE nombre_jugador = 'Adrián "Pola" Alonso';


-- Escenario 4: Actualización masiva por transferencia de equipo.
-- Todos los jugadores del 'Movistar Inter' son transferidos al 'ACCS Asnières Villeneuve 92'.
UPDATE jugadores_futsal
SET equipo = 'ACCS Asnières Villeneuve 92'
WHERE equipo = 'Movistar Inter';

-- Verificamos la transferencia de todos los jugadores del antiguo equipo.
SELECT nombre_jugador, equipo FROM jugadores_futsal WHERE equipo = 'ACCS Asnières Villeneuve 92';
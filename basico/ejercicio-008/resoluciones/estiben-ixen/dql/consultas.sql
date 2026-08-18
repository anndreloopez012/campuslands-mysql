USE campuslands_mysql;

-- ==========================================
-- CONSULTA 1
-- Actualizar salario de Juan Pérez
-- ==========================================

UPDATE jugadores_futbol_sala
SET salario = 5000.00
WHERE nombre = 'Juan Pérez';

SELECT
    nombre AS Jugador,
    salario AS Nuevo_Salario
FROM jugadores_futbol_sala
WHERE nombre = 'Juan Pérez';


-- ==========================================
-- CONSULTA 2
-- Cambiar el estado de Andrés Castillo
-- ==========================================

UPDATE jugadores_futbol_sala
SET estado = 'Activo'
WHERE nombre = 'Andrés Castillo';

SELECT
    nombre AS Jugador,
    estado AS Estado
FROM jugadores_futbol_sala
WHERE nombre = 'Andrés Castillo';


-- ==========================================
-- CONSULTA 3
-- Incrementar goles de Kevin García
-- ==========================================

UPDATE jugadores_futbol_sala
SET goles = goles + 2
WHERE nombre = 'Kevin García';

SELECT
    nombre AS Jugador,
    goles AS Goles
FROM jugadores_futbol_sala
WHERE nombre = 'Kevin García';


-- ==========================================
-- CONSULTA 4
-- Transferir a Miguel Díaz
-- ==========================================

UPDATE jugadores_futbol_sala
SET equipo = 'Tigres FS'
WHERE nombre = 'Miguel Díaz';

SELECT
    nombre AS Jugador,
    equipo AS Equipo
FROM jugadores_futbol_sala
WHERE nombre = 'Miguel Díaz';


-- ==========================================
-- CONSULTA 5
-- Actualizar asistencias de Carlos Méndez
-- ==========================================

UPDATE jugadores_futbol_sala
SET asistencias = 15
WHERE nombre = 'Carlos Méndez';

SELECT
    nombre AS Jugador,
    asistencias AS Asistencias
FROM jugadores_futbol_sala
WHERE nombre = 'Carlos Méndez';


-- ==========================================
-- CONSULTA 6
-- Incrementar salario de todos los jugadores activos
-- ==========================================

UPDATE jugadores_futbol_sala
SET salario = salario + 250
WHERE estado = 'Activo';

SELECT
    nombre AS Jugador,
    salario AS Salario,
    estado AS Estado
FROM jugadores_futbol_sala
WHERE estado = 'Activo';
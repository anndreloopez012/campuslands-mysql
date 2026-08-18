-- 1. Ver jugadores antes de actualizar
SELECT * FROM `ejercicio-008-bas-futbolsala`;

-- 2. Actualizar goles del delantero
UPDATE `ejercicio-008-bas-futbolsala` 
SET goles = goles + 2 
WHERE posicion = 'delantero' AND equipo = 'Fury FC';

-- 3. Actualizar estado de lesionados
UPDATE `ejercicio-008-bas-futbolsala` 
SET estado = 'recuperación' 
WHERE estado = 'lesionado';

-- 4. Actualizar asistencias de defensas
UPDATE `ejercicio-008-bas-futbolsala` 
SET asistencias = asistencias + 3 
WHERE posicion = 'defensa' AND goles > 3;

-- 5. Actualizar partidos jugados
UPDATE `ejercicio-008-bas-futbolsala` 
SET partidos = partidos + 1 
WHERE estado != 'lesionado';

-- 6. Ver jugadores después de actualizar
SELECT * FROM `ejercicio-008-bas-futbolsala`;
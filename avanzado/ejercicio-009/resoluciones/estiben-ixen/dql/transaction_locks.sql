USE kickboxing_locks_db;



-- ==========================================
-- BLOQUEO DE UN COMBATE
-- ==========================================

START TRANSACTION;


-- Bloquea el registro mientras se actualiza

SELECT *

FROM fights

WHERE id_fight = 1

FOR UPDATE;



-- Actualizar ganador

UPDATE fights

SET

winner_id = 2,

fight_status = 'finished'

WHERE id_fight = 1;



-- Confirmar cambios

COMMIT;



-- ==========================================
-- EJEMPLO DE ROLLBACK
-- ==========================================


START TRANSACTION;


SELECT *

FROM fighters

WHERE id_fighter = 1

FOR UPDATE;



UPDATE fighters

SET victories = victories + 1

WHERE id_fighter = 1;



-- Si existe un error:

ROLLBACK;
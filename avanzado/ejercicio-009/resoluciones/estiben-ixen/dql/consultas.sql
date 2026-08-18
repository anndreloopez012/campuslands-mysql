USE kickboxing_locks_db;



-- ==========================================
-- CONSULTA 1
-- Ver combates programados
-- ==========================================

SELECT

    f.id_fight AS combate,

    f1.fighter_name AS peleador_1,

    f2.fighter_name AS peleador_2,

    f.fight_status AS estado

FROM fights f

INNER JOIN fighters f1

ON f.fighter_one = f1.id_fighter

INNER JOIN fighters f2

ON f.fighter_two = f2.id_fighter;



-- ==========================================
-- CONSULTA 2
-- Ranking de victorias
-- ==========================================

SELECT

fighter_name AS peleador,

victories AS victorias

FROM fighters

ORDER BY victories DESC;



-- ==========================================
-- CONSULTA 3
-- Peleadores activos
-- ==========================================

SELECT

fighter_name AS peleador,

nationality AS nacionalidad

FROM fighters

WHERE status='active';



-- ==========================================
-- CONSULTA 4
-- Eventos registrados
-- ==========================================

SELECT

event_name AS evento,

event_date AS fecha

FROM events

ORDER BY event_date;



-- ==========================================
-- CONSULTA 5
-- Combates finalizados
-- ==========================================

SELECT

id_fight AS combate,

winner_id AS ganador

FROM fights

WHERE fight_status='finished';
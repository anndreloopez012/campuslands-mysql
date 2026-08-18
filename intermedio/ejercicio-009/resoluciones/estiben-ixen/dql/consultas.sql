USE kickboxing_db;



-- 1. Mostrar peleadores con entrenador y categoria

SELECT

    f.fighter_name AS peleador,

    t.trainer_name AS entrenador,

    wc.category_name AS categoria

FROM fighters f

INNER JOIN trainers t

ON f.id_trainer = t.id_trainer

INNER JOIN weight_categories wc

ON f.id_category = wc.id_category;



-- 2. Ranking de peleadores con mas victorias

SELECT

    fighter_name AS peleador,

    victories AS victorias

FROM fighters

ORDER BY victories DESC

LIMIT 5;



-- 3. Cantidad de peleadores por categoria

SELECT

    wc.category_name AS categoria,

    COUNT(f.id_fighter) AS total_peleadores

FROM weight_categories wc

LEFT JOIN fighters f

ON wc.id_category = f.id_category

GROUP BY wc.category_name;



-- 4. Historial de combates realizados

SELECT

    fi.event_name AS evento,

    f1.fighter_name AS peleador_1,

    f2.fighter_name AS peleador_2,

    fi.fight_date AS fecha

FROM fights fi

INNER JOIN fighters f1

ON fi.fighter_one = f1.id_fighter

INNER JOIN fighters f2

ON fi.fighter_two = f2.id_fighter;



-- 5. Ganadores y metodo de victoria

SELECT

    f.fighter_name AS ganador,

    fr.fight_method AS metodo

FROM fight_results fr

INNER JOIN fighters f

ON fr.winner_id = f.id_fighter;



-- 6. Promedio de victorias por categoria

SELECT

    wc.category_name AS categoria,

    AVG(f.victories) AS promedio_victorias

FROM fighters f

INNER JOIN weight_categories wc

ON f.id_category = wc.id_category

GROUP BY wc.category_name;
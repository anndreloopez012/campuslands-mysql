USE ejercicio_09_int;

-- 1. Mostrar los peleadores con su gimnasio
SELECT
    f.fighter_name,
    g.gym_name
FROM fighters f
INNER JOIN gyms g
ON f.gym_id = g.gym_id;

-- 2. Mostrar las peleas con el nombre del torneo
SELECT
    f.fighter_name,
    t.tournament_name,
    fi.opponent_name,
    fi.result
FROM fights fi
INNER JOIN fighters f
ON fi.fighter_id = f.fighter_id
INNER JOIN tournaments t
ON fi.tournament_id = t.tournament_id;

-- 3. Mostrar los peleadores del gimnasio Iron Warriors
SELECT
    fighter_name,
    weight_class
FROM fighters
WHERE gym_id = 1;

-- 4. Mostrar los torneos realizados en Cali
SELECT *
FROM tournaments
WHERE location = 'Cali';

-- 5. Contar el total de peleas registradas
SELECT COUNT(*) AS total_fights
FROM fights;

-- 6. Mostrar los peleadores que ganaron su combate
SELECT
    f.fighter_name,
    fi.result
FROM fights fi
INNER JOIN fighters f
ON fi.fighter_id = f.fighter_id
WHERE fi.result = 'Win';
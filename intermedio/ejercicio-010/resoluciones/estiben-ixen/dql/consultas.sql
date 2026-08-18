USE urban_races_db;



-- 1. Mostrar corredores inscritos con su carrera

SELECT

    p.full_name AS corredor,

    r.race_name AS carrera,

    r.distance_km AS distancia

FROM registrations reg

INNER JOIN participants p

ON reg.id_participant = p.id_participant

INNER JOIN races r

ON reg.id_race = r.id_race;



-- 2. Ranking de corredores por posicion final

SELECT

    p.full_name AS corredor,

    res.final_position AS posicion,

    res.finish_time AS tiempo

FROM results res

INNER JOIN registrations reg

ON res.id_registration = reg.id_registration

INNER JOIN participants p

ON reg.id_participant = p.id_participant

ORDER BY posicion ASC;



-- 3. Cantidad de participantes por carrera

SELECT

    r.race_name AS carrera,

    COUNT(reg.id_registration) AS participantes

FROM races r

LEFT JOIN registrations reg

ON r.id_race = reg.id_race

GROUP BY r.race_name;



-- 4. Mejor tiempo registrado

SELECT

    p.full_name AS corredor,

    res.finish_time AS tiempo

FROM results res

INNER JOIN registrations reg

ON res.id_registration = reg.id_registration

INNER JOIN participants p

ON reg.id_participant = p.id_participant

ORDER BY tiempo ASC

LIMIT 5;



-- 5. Participantes por pais

SELECT

    country AS pais,

    COUNT(*) AS total_corredores

FROM participants

GROUP BY country

ORDER BY total_corredores DESC;



-- 6. Carreras superiores a 10 kilometros

SELECT

    race_name AS carrera,

    distance_km AS kilometros

FROM races

WHERE distance_km > 10

ORDER BY distance_km DESC;
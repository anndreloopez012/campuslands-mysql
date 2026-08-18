USE urban_races_backup_db;



-- 1. Participantes inscritos con carrera

SELECT

    p.full_name AS corredor,

    r.race_name AS carrera,

    r.distance_km AS distancia

FROM registrations reg

INNER JOIN participants p

ON reg.id_participant = p.id_participant

INNER JOIN races r

ON reg.id_race = r.id_race;



-- 2. Ranking general

SELECT

    p.full_name AS corredor,

    rr.final_position AS posicion,

    rr.finish_time AS tiempo

FROM race_results rr

INNER JOIN registrations reg

ON rr.id_registration = reg.id_registration

INNER JOIN participants p

ON reg.id_participant = p.id_participant

ORDER BY posicion;



-- 3. Cantidad de participantes por carrera

SELECT

    r.race_name AS carrera,

    COUNT(reg.id_registration) AS inscritos

FROM races r

LEFT JOIN registrations reg

ON r.id_race = reg.id_race

GROUP BY r.race_name;



-- 4. Mejor tiempo registrado

SELECT

    p.full_name AS corredor,

    rr.finish_time AS tiempo

FROM race_results rr

INNER JOIN registrations reg

ON rr.id_registration = reg.id_registration

INNER JOIN participants p

ON reg.id_participant=p.id_participant

ORDER BY tiempo ASC

LIMIT 5;



-- 5. Participantes por país

SELECT

    country AS pais,

    COUNT(*) AS corredores

FROM participants

GROUP BY country

ORDER BY corredores DESC;
USE ejercicio_07_int;

SELECT * 
FROM teams;

SELECT p. player_name, p.position, t.team_name
FROM players p
INNER JOIN teams t
ON p.team_id = t.team_id;

SELECT * FROM tournaments;

SELECT t.team_name, tr.tournament_name, tt.points
FROM team_tournaments tt
INNER JOIN teams t
ON tt.team_id = t.team_id
INNER JOIN tournaments tr
ON tt.tournament_id = tr.tournament_id;

SELECT COUNT(*) AS total_registrations
FROM team_tournaments;
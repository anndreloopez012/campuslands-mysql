USE ejercicio_08_adv;
DROP ROLE IF EXISTS administrator_role;
-- Crear roles
CREATE ROLE coach_role;
CREATE ROLE referee_role;
CREATE ROLE administrator_role;

-- Permisos para entrenadores
GRANT SELECT ON ejercicio_08_adv.players TO coach_role;
GRANT SELECT ON ejercicio_08_adv.teams TO coach_role;
GRANT SELECT ON ejercicio_08_adv.standings TO coach_role;

-- Permisos para árbitros
GRANT SELECT ON ejercicio_08_adv.matches TO referee_role;
GRANT UPDATE(home_score, away_score)
ON ejercicio_08_adv.matches
TO referee_role;

-- Permisos para administradores
GRANT ALL PRIVILEGES
ON ejercicio_08_adv.*
TO administrator_role;

-- Crear usuarios
CREATE USER 'coach1'@'localhost' IDENTIFIED BY 'Coach123!';
CREATE USER 'referee1'@'localhost' IDENTIFIED BY 'Ref123!';
CREATE USER 'admin1'@'localhost' IDENTIFIED BY 'Admin123!';

-- Asignar roles
GRANT coach_role TO 'coach1'@'localhost';
GRANT referee_role TO 'referee1'@'localhost';
GRANT administrator_role TO 'admin1'@'localhost';

-- Establecer rol por defecto
SET DEFAULT ROLE coach_role TO 'coach1'@'localhost';
SET DEFAULT ROLE referee_role TO 'referee1'@'localhost';
SET DEFAULT ROLE administrator_role TO 'admin1'@'localhost';

-- Consultas de verificación
SELECT user, host FROM mysql.user WHERE account_locked = 'Y' AND password_expired = 'Y';

SHOW GRANTS FOR 'coach1'@'localhost';

SHOW GRANTS FOR 'referee1'@'localhost';

SHOW GRANTS FOR 'admin1'@'localhost';

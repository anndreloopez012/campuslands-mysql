USE futsal_security_db;



-- Crear roles

CREATE ROLE 'role_futsal_admin';

CREATE ROLE 'role_futsal_coach';

CREATE ROLE 'role_futsal_analyst';

CREATE ROLE 'role_futsal_registration';



-- ===================================
-- Permisos administrador
-- ===================================

GRANT ALL PRIVILEGES

ON futsal_security_db.*

TO 'role_futsal_admin';



-- ===================================
-- Permisos entrenador
-- ===================================

GRANT SELECT

ON futsal_security_db.players

TO 'role_futsal_coach';


GRANT SELECT

ON futsal_security_db.statistics

TO 'role_futsal_coach';



-- ===================================
-- Permisos analista
-- ===================================

GRANT SELECT

ON futsal_security_db.*

TO 'role_futsal_analyst';



-- ===================================
-- Permisos registro
-- ===================================

GRANT SELECT,INSERT,UPDATE

ON futsal_security_db.players

TO 'role_futsal_registration';



-- Ver permisos

SHOW GRANTS FOR 'role_futsal_admin';

SHOW GRANTS FOR 'role_futsal_coach';

SHOW GRANTS FOR 'role_futsal_analyst';

SHOW GRANTS FOR 'role_futsal_registration';
-- funcionalidades/ejercicio-018 - maria-montepeque
-- Tematica: videojuego RPG
--
-- IMPORTANTE: este archivo se ejecuta como root, no como 'campus'.
-- Crear ROLES y USERS requiere privilegios GLOBALES (CREATE ROLE, CREATE
-- USER, GRANT OPTION) que el usuario 'campus' de docker-compose.yml no
-- tiene (el suyo esta limitado a campuslands_mysql.*). Es justo lo que este
-- ejercicio quiere mostrar: la administracion de roles es una tarea de
-- administrador, no de un usuario de aplicacion normal.
USE campuslands_mysql;

DROP TABLE IF EXISTS objetos_inventario;
DROP TABLE IF EXISTS personajes_rpg;

CREATE TABLE personajes_rpg (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    clase ENUM('Guerrero', 'Mago', 'Arquero', 'Sanador') NOT NULL,
    nivel INT NOT NULL DEFAULT 1,
    experiencia INT NOT NULL DEFAULT 0,
    propietario VARCHAR(60) NOT NULL,
    CONSTRAINT chk_nivel_personaje CHECK (nivel > 0)
);

CREATE TABLE objetos_inventario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    personaje_id INT NOT NULL,
    nombre_objeto VARCHAR(80) NOT NULL,
    tipo ENUM('Arma', 'Armadura', 'Pocion', 'Miscelaneo') NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_objeto_personaje
        FOREIGN KEY (personaje_id) REFERENCES personajes_rpg (id),
    CONSTRAINT chk_cantidad_objeto CHECK (cantidad > 0)
);

-- Limpieza por si el ejercicio ya se corrio antes en este mismo contenedor.
DROP USER IF EXISTS 'jugador_lira'@'%';
DROP USER IF EXISTS 'gm_orion'@'%';
DROP USER IF EXISTS 'admin_kael'@'%';
DROP ROLE IF EXISTS 'rol_jugador';
DROP ROLE IF EXISTS 'rol_game_master';
DROP ROLE IF EXISTS 'rol_administrador';

-- 3 roles = 3 "rangos" del RPG, cada uno con permisos distintos sobre las
-- mismas 2 tablas.
CREATE ROLE 'rol_jugador';
CREATE ROLE 'rol_game_master';
CREATE ROLE 'rol_administrador';

-- Jugador: solo puede CONSULTAR su ficha e inventario, no modificar nada.
GRANT SELECT ON campuslands_mysql.personajes_rpg TO 'rol_jugador';
GRANT SELECT ON campuslands_mysql.objetos_inventario TO 'rol_jugador';

-- Game Master: administra contenido del juego (crea/edita personajes y
-- objetos), pero NO puede borrar nada (eso queda solo para el admin).
GRANT SELECT, INSERT, UPDATE ON campuslands_mysql.personajes_rpg TO 'rol_game_master';
GRANT SELECT, INSERT, UPDATE ON campuslands_mysql.objetos_inventario TO 'rol_game_master';

-- Administrador: control total sobre las 2 tablas, incluyendo DELETE.
GRANT ALL PRIVILEGES ON campuslands_mysql.personajes_rpg TO 'rol_administrador';
GRANT ALL PRIVILEGES ON campuslands_mysql.objetos_inventario TO 'rol_administrador';

-- 3 usuarios reales, uno por rol.
CREATE USER 'jugador_lira'@'%' IDENTIFIED BY 'Jugador_2026!';
CREATE USER 'gm_orion'@'%' IDENTIFIED BY 'GameMaster_2026!';
CREATE USER 'admin_kael'@'%' IDENTIFIED BY 'AdminReino_2026!';

GRANT 'rol_jugador' TO 'jugador_lira'@'%';
GRANT 'rol_game_master' TO 'gm_orion'@'%';
GRANT 'rol_administrador' TO 'admin_kael'@'%';

-- SET DEFAULT ROLE: sin esto, el rol queda "otorgado" pero inactivo por
-- defecto al conectarse (habria que ejecutar SET ROLE a mano en cada sesion).
SET DEFAULT ROLE 'rol_jugador' TO 'jugador_lira'@'%';
SET DEFAULT ROLE 'rol_game_master' TO 'gm_orion'@'%';
SET DEFAULT ROLE 'rol_administrador' TO 'admin_kael'@'%';

FLUSH PRIVILEGES;

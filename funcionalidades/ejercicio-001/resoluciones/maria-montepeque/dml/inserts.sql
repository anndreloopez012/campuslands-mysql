-- Datos de practica y demostraciones de Motor InnoDB, comparado contra
-- MyISAM, para un gimnasio de kickboxing.
USE campuslands_mysql;

INSERT INTO gimnasios_innodb_demo (nombre, ciudad) VALUES
('Templo del Guerrero', 'Bogota'),
('Puño de Hierro', 'Medellin');

INSERT INTO luchadores_innodb_demo (id_gimnasio, nombre, victorias, derrotas) VALUES
(1, 'Kai Renner', 12, 3),
(1, 'Mara Solis', 9, 5),
(2, 'Toby Reyes', 15, 2);

INSERT INTO luchadores_myisam_demo (id_gimnasio, nombre, victorias, derrotas) VALUES
(1, 'Kai Renner', 12, 3),
(1, 'Mara Solis', 9, 5),
(2, 'Toby Reyes', 15, 2);

INSERT INTO inventario_gym_innodb_demo (id_item, nombre, stock) VALUES
(1, 'Guantes de Kickboxing', 20),
(2, 'Protector Bucal', 50);

INSERT INTO inventario_gym_myisam_demo (id_item, nombre, stock) VALUES
(1, 'Guantes de Kickboxing', 20),
(2, 'Protector Bucal', 50);

-- ===================================================================
-- DEMOSTRACION 1: claves foraneas. id_gimnasio = 99 NO existe en
-- gimnasios_innodb_demo.
-- ===================================================================
--
-- En InnoDB este INSERT fallaria (por eso NO se ejecuta aqui, se deja
-- documentado como prueba manual en dql/consultas.sql):
--   INSERT INTO luchadores_innodb_demo (id_gimnasio, nombre, victorias, derrotas)
--   VALUES (99, 'Luchador Fantasma', 0, 0);
--   -> ERROR 1452 (23000): Cannot add or update a child row: a foreign
--      key constraint fails
--
-- En MyISAM, la MISMA fila con la MISMA referencia invalida SI se
-- inserta sin error: MyISAM acepta la sintaxis de FOREIGN KEY al crear
-- la tabla, pero no la hace cumplir. Esto se ejecuta de verdad aqui
-- para dejar la evidencia en la tabla:
INSERT INTO luchadores_myisam_demo (id_gimnasio, nombre, victorias, derrotas)
VALUES (99, 'Luchador Fantasma', 0, 0);

-- ===================================================================
-- DEMOSTRACION 2: transacciones (COMMIT / ROLLBACK).
-- Mismo UPDATE, mismo ROLLBACK, en InnoDB y en MyISAM.
-- ===================================================================

-- InnoDB: START TRANSACTION + ROLLBACK revierte el cambio de verdad.
START TRANSACTION;
UPDATE inventario_gym_innodb_demo SET stock = stock - 5 WHERE id_item = 1;
ROLLBACK;
-- Verificacion: el stock de InnoDB debe seguir en 20 (consulta 1 de dql/consultas.sql).

-- MyISAM: START TRANSACTION no falla (MySQL la acepta a nivel de
-- conexion), pero MyISAM no soporta transacciones reales: cada
-- sentencia se confirma sola, asi que ROLLBACK no revierte nada.
START TRANSACTION;
UPDATE inventario_gym_myisam_demo SET stock = stock - 5 WHERE id_item = 1;
ROLLBACK;
-- Verificacion real (consulta 1 de dql/consultas.sql): el stock de
-- InnoDB queda en 20 (el ROLLBACK si aplico) y el de MyISAM queda en
-- 15 (el ROLLBACK no tuvo ningun efecto). Se deja esta diferencia
-- visible a proposito, como evidencia directa, en vez de resetear los
-- datos despues.
--
-- La demostracion de bloqueo por filas (Parte 3, ver README.md) usa el
-- item 2 ("Protector Bucal"), que ninguna de las dos transacciones
-- anteriores toco, para partir de un valor limpio (50 en ambas tablas).

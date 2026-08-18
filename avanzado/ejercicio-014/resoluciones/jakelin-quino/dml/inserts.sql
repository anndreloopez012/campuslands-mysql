-- Datos iniciales
INSERT INTO `ejercicio-014-adv-peliculas` 
(titulo, director, fecha_estreno, calificacion, vistas) VALUES 
('Star Wars Episodio IV', 'George Lucas', '1977-05-25', 4.80, 1000),
('Star Wars Episodio V', 'Irvin Kershner', '1980-05-21', 4.70, 800),
('Star Wars Episodio VI', 'Richard Marquand', '1983-05-25', 4.65, 900),
('Star Wars Episodio I', 'George Lucas', '1999-05-19', 4.30, 600),
('Star Wars Episodio VII', 'J.J. Abrams', '2015-12-18', 4.60, 1200);

-- Procedimiento para actualizar vistas
DELIMITER //
CREATE PROCEDURE `sp_actualizar_vistas`()
BEGIN
    UPDATE `ejercicio-014-adv-peliculas`
    SET vistas = vistas + 10,
        ultima_actualizacion = CURRENT_TIMESTAMP;
    
    INSERT INTO `ejercicio-014-adv_log` (mensaje)
    VALUES ('Vistas actualizadas manualmente');
END //
DELIMITER ;

-- Procedimiento para ver películas antiguas
DELIMITER //
CREATE PROCEDURE `sp_peliculas_antiguas`()
BEGIN
    INSERT INTO `ejercicio-014-adv_log` (mensaje)
    SELECT CONCAT('Película antigua: ', titulo, ' (', fecha_estreno, ')')
    FROM `ejercicio-014-adv-peliculas`
    WHERE YEAR(fecha_estreno) < 1990;
END //
DELIMITER ;
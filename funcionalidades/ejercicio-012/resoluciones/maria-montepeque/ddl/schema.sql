-- funcionalidades/ejercicio-012 - maria-montepeque
-- Tematica: estudio de tatuajes
USE campuslands_mysql;

DROP PROCEDURE IF EXISTS sp_recalcular_tarifas;
DROP PROCEDURE IF EXISTS sp_completar_cita;
DROP PROCEDURE IF EXISTS sp_resumen_artista;
DROP PROCEDURE IF EXISTS sp_agendar_cita;
DROP PROCEDURE IF EXISTS sp_listar_citas_artista;
DROP TABLE IF EXISTS citas_tatuaje;
DROP TABLE IF EXISTS artistas_tatuaje;

CREATE TABLE artistas_tatuaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    tarifa_hora DECIMAL(6, 2) NOT NULL,
    CONSTRAINT chk_tarifa_artista CHECK (tarifa_hora > 0)
);

CREATE TABLE citas_tatuaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    artista_id INT NOT NULL,
    cliente VARCHAR(60) NOT NULL,
    fecha_cita DATE NOT NULL,
    horas_estimadas DECIMAL(4, 1) NOT NULL,
    estado ENUM('agendada', 'completada', 'cancelada') NOT NULL DEFAULT 'agendada',
    costo_total DECIMAL(8, 2) NOT NULL,
    CONSTRAINT fk_cita_artista
        FOREIGN KEY (artista_id) REFERENCES artistas_tatuaje (id),
    CONSTRAINT chk_horas_cita CHECK (horas_estimadas > 0)
);

DELIMITER $$

-- 1. Procedimiento simple con un parametro IN: lista las citas de un artista.
CREATE PROCEDURE sp_listar_citas_artista(IN p_artista_id INT)
BEGIN
    SELECT id, cliente, fecha_cita, horas_estimadas, estado, costo_total
    FROM citas_tatuaje
    WHERE artista_id = p_artista_id
    ORDER BY fecha_cita;
END $$

-- 2. Encapsula una regla de negocio: el costo se calcula solo, tomando la
-- tarifa_hora ACTUAL del artista. Si el artista no existe, corta la operacion
-- con un error propio (SIGNAL) en vez de insertar una cita huerfana.
CREATE PROCEDURE sp_agendar_cita(
    IN p_artista_id INT,
    IN p_cliente VARCHAR(60),
    IN p_fecha DATE,
    IN p_horas DECIMAL(4, 1)
)
BEGIN
    DECLARE v_tarifa DECIMAL(6, 2);

    SELECT tarifa_hora INTO v_tarifa
    FROM artistas_tatuaje
    WHERE id = p_artista_id;

    IF v_tarifa IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El artista indicado no existe.';
    END IF;

    INSERT INTO citas_tatuaje (artista_id, cliente, fecha_cita, horas_estimadas, estado, costo_total)
    VALUES (p_artista_id, p_cliente, p_fecha, p_horas, 'agendada', p_horas * v_tarifa);
END $$

-- 3. Parametros OUT: devuelve totales calculados en vez de un SELECT, para
-- que otra rutina o aplicacion pueda usar los valores directamente.
CREATE PROCEDURE sp_resumen_artista(
    IN p_artista_id INT,
    OUT p_total_citas INT,
    OUT p_ingresos_totales DECIMAL(10, 2)
)
BEGIN
    SELECT COUNT(*), COALESCE(SUM(costo_total), 0)
    INTO p_total_citas, p_ingresos_totales
    FROM citas_tatuaje
    WHERE artista_id = p_artista_id AND estado = 'completada';
END $$

-- 4. Logica condicional + error personalizado: solo se puede completar una
-- cita que este 'agendada'. Intentar completar una ya completada o cancelada
-- debe rechazarse con un mensaje claro, no fallar en silencio.
CREATE PROCEDURE sp_completar_cita(IN p_cita_id INT)
BEGIN
    DECLARE v_estado_actual VARCHAR(20);

    SELECT estado INTO v_estado_actual
    FROM citas_tatuaje
    WHERE id = p_cita_id;

    IF v_estado_actual IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'La cita indicada no existe.';
    ELSEIF v_estado_actual <> 'agendada' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Solo se puede completar una cita que este agendada.';
    END IF;

    UPDATE citas_tatuaje SET estado = 'completada' WHERE id = p_cita_id;
END $$

-- 5. CURSOR + bucle: sube la tarifa de un artista y recalcula el costo SOLO
-- de sus citas 'agendada' (las 'completada' ya se cobraron con la tarifa
-- vieja y no deben cambiar). Se usa un cursor a proposito para mostrar como
-- se recorre un resultado fila por fila dentro de un procedimiento.
CREATE PROCEDURE sp_recalcular_tarifas(IN p_artista_id INT, IN p_nueva_tarifa DECIMAL(6, 2))
BEGIN
    DECLARE v_cita_id INT;
    DECLARE v_horas DECIMAL(4, 1);
    DECLARE v_fin_cursor BOOLEAN DEFAULT FALSE;

    DECLARE cur_citas_agendadas CURSOR FOR
        SELECT id, horas_estimadas
        FROM citas_tatuaje
        WHERE artista_id = p_artista_id AND estado = 'agendada';

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fin_cursor = TRUE;

    UPDATE artistas_tatuaje SET tarifa_hora = p_nueva_tarifa WHERE id = p_artista_id;

    OPEN cur_citas_agendadas;

    bucle_citas: LOOP
        FETCH cur_citas_agendadas INTO v_cita_id, v_horas;

        IF v_fin_cursor THEN
            LEAVE bucle_citas;
        END IF;

        UPDATE citas_tatuaje
        SET costo_total = v_horas * p_nueva_tarifa
        WHERE id = v_cita_id;
    END LOOP;

    CLOSE cur_citas_agendadas;
END $$

DELIMITER ;

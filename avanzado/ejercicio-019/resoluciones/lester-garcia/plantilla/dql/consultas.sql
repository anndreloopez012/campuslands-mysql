USE ejercicio_19_adv;

DELIMITER //

-- =====================================================
-- PROCEDURE 1
-- Registrar un salto y actualizar el contador
-- de saltos del paracaidista

CREATE PROCEDURE register_jump(
    IN p_skydiver_id INT,
    IN p_instructor_id INT,
    IN p_equipment_id INT,
    IN p_jump_date DATE,
    IN p_altitude INT,
    IN p_jump_type VARCHAR(50)
)
BEGIN

    INSERT INTO jumps (
        skydiver_id,
        instructor_id,
        equipment_id,
        jump_date,
        altitude,
        jump_type,
        status
    )
    VALUES (
        p_skydiver_id,
        p_instructor_id,
        p_equipment_id,
        p_jump_date,
        p_altitude,
        p_jump_type,
        'Completed'
    );

    UPDATE skydivers
    SET total_jumps = total_jumps + 1
    WHERE skydiver_id = p_skydiver_id;

    UPDATE equipment
    SET status = 'Available'
    WHERE equipment_id = p_equipment_id;

END //

DELIMITER ;


-- =====================================================
-- PROCEDURE 2
-- Obtener resumen estadístico de un paracaidista

DELIMITER //

CREATE PROCEDURE get_skydiver_summary(
    IN p_skydiver_id INT
)
BEGIN

    SELECT
        s.skydiver_id,
        s.full_name,
        s.experience_level,
        s.total_jumps,
        COUNT(j.jump_id) AS registered_jumps,
        COALESCE(AVG(j.altitude), 0) AS average_altitude,
        COALESCE(MAX(j.altitude), 0) AS highest_altitude,
        COALESCE(MIN(j.altitude), 0) AS lowest_altitude
    FROM skydivers s
    LEFT JOIN jumps j
        ON s.skydiver_id = j.skydiver_id
    WHERE s.skydiver_id = p_skydiver_id
    GROUP BY
        s.skydiver_id,
        s.full_name,
        s.experience_level,
        s.total_jumps;

END //

DELIMITER ;


-- =====================================================
-- PROCEDURE 3
-- Registrar salto realizando validaciones

DELIMITER //

CREATE PROCEDURE register_jump_with_validation(
    IN p_skydiver_id INT,
    IN p_instructor_id INT,
    IN p_equipment_id INT,
    IN p_jump_date DATE,
    IN p_altitude INT,
    IN p_jump_type VARCHAR(50)
)
BEGIN

    DECLARE v_skydiver_exists INT DEFAULT 0;
    DECLARE v_instructor_exists INT DEFAULT 0;
    DECLARE v_equipment_status VARCHAR(30);

    SELECT COUNT(*)
    INTO v_skydiver_exists
    FROM skydivers
    WHERE skydiver_id = p_skydiver_id
      AND status = 'Active';

    IF v_skydiver_exists = 0 THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Skydiver does not exist or is inactive';

    END IF;


    SELECT COUNT(*)
    INTO v_instructor_exists
    FROM instructors
    WHERE instructor_id = p_instructor_id
      AND status = 'Active';

    IF v_instructor_exists = 0 THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Instructor does not exist or is inactive';

    END IF;


    SELECT status
    INTO v_equipment_status
    FROM equipment
    WHERE equipment_id = p_equipment_id;

    IF v_equipment_status IS NULL THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Equipment does not exist';

    END IF;


    IF v_equipment_status <> 'Available' THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Equipment is not available';

    END IF;


    IF p_altitude < 5000 THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Altitude must be at least 5000 feet';

    END IF;


    INSERT INTO jumps (
        skydiver_id,
        instructor_id,
        equipment_id,
        jump_date,
        altitude,
        jump_type,
        status
    )
    VALUES (
        p_skydiver_id,
        p_instructor_id,
        p_equipment_id,
        p_jump_date,
        p_altitude,
        p_jump_type,
        'Completed'
    );


    UPDATE skydivers
    SET total_jumps = total_jumps + 1
    WHERE skydiver_id = p_skydiver_id;


    UPDATE equipment
    SET status = 'In Use'
    WHERE equipment_id = p_equipment_id;


    SELECT
        'Jump registered successfully' AS message;

END //

DELIMITER ;


-- =====================================================
-- prueba
-- =====================================================

CALL register_jump(
    1,
    2,
    3,
    '2026-08-22',
    12000,
    'Free Fall'
);


-- =====================================================
-- prueba
-- =====================================================

CALL get_skydiver_summary(1);


-- =====================================================
-- prueba
-- =====================================================

CALL register_jump_with_validation(
    2,
    3,
    5,
    '2026-08-22',
    11000,
    'Free Fall'
);


-- =====================================================
-- VERificar resultados
-- =====================================================

SELECT *
FROM skydivers;

SELECT *
FROM jumps;

SELECT *
FROM equipment;
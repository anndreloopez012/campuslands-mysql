-- funcionalidades/ejercicio-020 - maria-montepeque
-- Tematica: academia tech
USE campuslands_mysql;

DROP EVENT IF EXISTS evt_bienvenida_unica;
DROP EVENT IF EXISTS evt_marcar_matriculas_vencidas;
DROP TABLE IF EXISTS log_eventos_academia;
DROP TABLE IF EXISTS matriculas_curso;
DROP TABLE IF EXISTS estudiantes_academia;

CREATE TABLE estudiantes_academia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    curso VARCHAR(60) NOT NULL,
    fecha_inscripcion DATE NOT NULL
);

CREATE TABLE matriculas_curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT NOT NULL,
    curso VARCHAR(60) NOT NULL,
    fecha_limite_pago DATE NOT NULL,
    pago_realizado TINYINT(1) NOT NULL DEFAULT 0,
    estado_matricula ENUM('vigente', 'vencida', 'completada') NOT NULL DEFAULT 'vigente',
    CONSTRAINT fk_matricula_estudiante
        FOREIGN KEY (estudiante_id) REFERENCES estudiantes_academia (id)
);

-- Aqui es donde queda la PRUEBA real de que un evento se ejecuto solo, sin
-- que nadie llamara nada: cada corrida del evento inserta una fila.
CREATE TABLE log_eventos_academia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento_nombre VARCHAR(60) NOT NULL,
    mensaje VARCHAR(200) NOT NULL,
    ejecutado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

-- Evento RECURRENTE: en produccion esto normalmente seria "EVERY 1 DAY", pero
-- se deja en 5 segundos para poder ver, en la misma sesion, varias corridas
-- reales sin tener que esperar 24 horas.
CREATE EVENT evt_marcar_matriculas_vencidas
ON SCHEDULE EVERY 5 SECOND
STARTS NOW() + INTERVAL 25 SECOND
DO
BEGIN
    UPDATE matriculas_curso
    SET estado_matricula = 'vencida'
    WHERE pago_realizado = 0
        AND fecha_limite_pago < CURDATE()
        AND estado_matricula = 'vigente';

    INSERT INTO log_eventos_academia (evento_nombre, mensaje)
    VALUES ('evt_marcar_matriculas_vencidas', CONCAT('Revision ejecutada. Filas afectadas: ', ROW_COUNT()));
END $$

-- Evento UNICO (no recurrente): se dispara una sola vez, un rato despues de
-- crearlo, y luego el propio Event Scheduler lo elimina solo
-- (ON COMPLETION NOT PRESERVE es el valor por defecto).
CREATE EVENT evt_bienvenida_unica
ON SCHEDULE AT NOW() + INTERVAL 15 SECOND
DO
BEGIN
    INSERT INTO log_eventos_academia (evento_nombre, mensaje)
    VALUES ('evt_bienvenida_unica', 'Recordatorio de bienvenida enviado a los estudiantes nuevos.');
END $$

DELIMITER ;

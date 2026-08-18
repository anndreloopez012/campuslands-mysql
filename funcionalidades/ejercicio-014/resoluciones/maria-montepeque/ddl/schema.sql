-- funcionalidades/ejercicio-014 - maria-montepeque
-- Tematica: animacion 3D
USE campuslands_mysql;

DROP TRIGGER IF EXISTS trg_proyecto_before_delete;
DROP TRIGGER IF EXISTS trg_proyecto_after_update;
DROP TRIGGER IF EXISTS trg_proyecto_before_update;
DROP TRIGGER IF EXISTS trg_frames_after_delete;
DROP TRIGGER IF EXISTS trg_frames_after_insert;
DROP TABLE IF EXISTS auditoria_proyectos;
DROP TABLE IF EXISTS renders_frames;
DROP TABLE IF EXISTS proyectos_animacion;

CREATE TABLE proyectos_animacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    estudio VARCHAR(60) NOT NULL,
    presupuesto DECIMAL(10, 2) NOT NULL,
    -- Estas dos columnas las mantienen los triggers, no se escriben a mano.
    gasto_actual DECIMAL(10, 2) NOT NULL DEFAULT 0,
    total_frames INT NOT NULL DEFAULT 0,
    estado ENUM('produccion', 'pausado', 'finalizado') NOT NULL DEFAULT 'produccion',
    actualizado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_presupuesto_proyecto CHECK (presupuesto > 0)
);

CREATE TABLE renders_frames (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT NOT NULL,
    numero_frame INT NOT NULL,
    costo_render DECIMAL(8, 2) NOT NULL,
    estado_render ENUM('pendiente', 'renderizado', 'fallido') NOT NULL DEFAULT 'pendiente',
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_frame_proyecto
        FOREIGN KEY (proyecto_id) REFERENCES proyectos_animacion (id)
        ON DELETE CASCADE,
    CONSTRAINT chk_costo_frame CHECK (costo_render >= 0)
);

CREATE TABLE auditoria_proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT NOT NULL,
    campo VARCHAR(30) NOT NULL,
    valor_anterior VARCHAR(60) NOT NULL,
    valor_nuevo VARCHAR(60) NOT NULL,
    modificado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

-- 1. AFTER INSERT en renders_frames: cada vez que se agrega un frame, suma
-- solo su costo al proyecto y sube el contador. Nadie tiene que actualizar
-- proyectos_animacion a mano.
CREATE TRIGGER trg_frames_after_insert
AFTER INSERT ON renders_frames
FOR EACH ROW
BEGIN
    UPDATE proyectos_animacion
    SET total_frames = total_frames + 1,
        gasto_actual = gasto_actual + NEW.costo_render,
        actualizado_en = NOW()
    WHERE id = NEW.proyecto_id;
END $$

-- 2. AFTER DELETE en renders_frames: complemento del anterior, resta el
-- costo del frame borrado (usa OLD porque la fila ya no existe).
CREATE TRIGGER trg_frames_after_delete
AFTER DELETE ON renders_frames
FOR EACH ROW
BEGIN
    UPDATE proyectos_animacion
    SET total_frames = total_frames - 1,
        gasto_actual = gasto_actual - OLD.costo_render,
        actualizado_en = NOW()
    WHERE id = OLD.proyecto_id;
END $$

-- 3. BEFORE UPDATE en proyectos_animacion: no se puede bajar el presupuesto
-- por debajo de lo que ya se gasto en frames.
CREATE TRIGGER trg_proyecto_before_update
BEFORE UPDATE ON proyectos_animacion
FOR EACH ROW
BEGIN
    IF NEW.presupuesto < OLD.gasto_actual THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El presupuesto no puede ser menor al gasto ya realizado.';
    END IF;
END $$

-- 4. AFTER UPDATE en proyectos_animacion: deja registro en auditoria_proyectos
-- SOLO de los campos que de verdad cambiaron (estado y/o presupuesto).
CREATE TRIGGER trg_proyecto_after_update
AFTER UPDATE ON proyectos_animacion
FOR EACH ROW
BEGIN
    IF NOT (NEW.estado <=> OLD.estado) THEN
        INSERT INTO auditoria_proyectos (proyecto_id, campo, valor_anterior, valor_nuevo)
        VALUES (OLD.id, 'estado', OLD.estado, NEW.estado);
    END IF;

    IF NOT (NEW.presupuesto <=> OLD.presupuesto) THEN
        INSERT INTO auditoria_proyectos (proyecto_id, campo, valor_anterior, valor_nuevo)
        VALUES (OLD.id, 'presupuesto', OLD.presupuesto, NEW.presupuesto);
    END IF;
END $$

-- 5. BEFORE DELETE en proyectos_animacion: regla de negocio (no de
-- integridad referencial, esa ya la cubre el FOREIGN KEY ... ON DELETE
-- CASCADE): no se puede borrar un proyecto que sigue 'en produccion'.
CREATE TRIGGER trg_proyecto_before_delete
BEFORE DELETE ON proyectos_animacion
FOR EACH ROW
BEGIN
    IF OLD.estado = 'produccion' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede eliminar un proyecto que sigue en produccion.';
    END IF;
END $$

DELIMITER ;

USE campuslands_mysql;

INSERT INTO kickboxing_inscripciones (nombre_evento, cupo_total, cupo_ocupado, fecha_evento, estado) VALUES
('Torneo Relampago',       20, 18, '2026-08-10', 'abierto'),
('Copa Elite Kickboxing',  15, 15, '2026-08-15', 'cerrado'),
('Exhibicion Amistosa',    30, 5,  '2026-08-20', 'abierto'),
('Torneo Nocturno',        10, 9,  '2026-08-05', 'abierto'),
('Copa Juvenil',           25, 0,  '2026-09-01', 'abierto'),
('Torneo de Verano',       18, 18, '2026-07-30', 'cerrado'),
('Exhibicion VIP',         12, 3,  '2026-08-25', 'abierto'),
('Copa Cancelada',         20, 4,  '2026-08-12', 'cancelado');

-- === Bloqueo a nivel de TABLA (LOCK TABLES) ===
-- Simula un proceso administrativo que necesita exclusividad total sobre la tabla
LOCK TABLES kickboxing_inscripciones WRITE;

UPDATE kickboxing_inscripciones
SET estado = 'cerrado'
WHERE cupo_ocupado >= cupo_total AND estado = 'abierto';

UNLOCK TABLES;

-- === Bloqueo a nivel de FILA (SELECT ... FOR UPDATE dentro de una transaccion) ===
-- Simula una inscripcion individual: se bloquea solo la fila del evento mientras se verifica cupo
START TRANSACTION;

SELECT cupo_total, cupo_ocupado, estado
FROM kickboxing_inscripciones
WHERE id_evento = 4
FOR UPDATE;

-- Validacion de cupo disponible antes de inscribir (Torneo Nocturno: 9/10, hay espacio para 1 mas)
UPDATE kickboxing_inscripciones
SET cupo_ocupado = cupo_ocupado + 1
WHERE id_evento = 4 AND cupo_ocupado < cupo_total;

COMMIT;

-- === Caso limite: intento de inscripcion en evento sin cupo disponible ===
START TRANSACTION;

SELECT cupo_total, cupo_ocupado, estado
FROM kickboxing_inscripciones
WHERE id_evento = 2
FOR UPDATE;

-- Copa Elite Kickboxing ya esta en 15/15; el WHERE evita que el UPDATE tenga efecto
UPDATE kickboxing_inscripciones
SET cupo_ocupado = cupo_ocupado + 1
WHERE id_evento = 2 AND cupo_ocupado < cupo_total;

COMMIT;
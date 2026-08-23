USE ejercicio_20_adv;

-- =====================================================
-- 1. Crear índice para buscar citas por fecha
-- =====================================================

CREATE INDEX idx_appointment_date
ON appointments(appointment_date);

-- =====================================================
-- 2. Crear índice para buscar citas por estado
-- =====================================================

CREATE INDEX idx_appointemnts_status
ON appointments(status);

-- =====================================================
-- 3. Crear índice para buscar tatuadores por especialidad
-- =====================================================

CREATE INDEX idx_artists_specialty
ON tattoo_artists(specialty);

-- =====================================================
-- 4. Crear índice compuesto para cita con fecha y hora
-- =====================================================
drop index idx_appointments_date_time on appointments;
CREATE INDEX idx_appointments_date_time
ON appointments(appointment_date, appointment_time);

-- =====================================================
--  Analizar búsqueda por fecha
-- =====================================================

EXPLAIN
SELECT
    appointment_id,
    client_id,
    artist_id,
    appointment_date,
    appointment_time,
    status
FROM appointments
WHERE appointment_date = '2026-08-25';


-- =====================================================
--  Analizar búsqueda por estado
-- =====================================================

EXPLAIN
SELECT
    appointment_id,
    client_id,
    appointment_date,
    status
FROM appointments
WHERE status = 'Scheduled';


-- =====================================================
--  Analizar búsqueda por especialidad
-- =====================================================

EXPLAIN
SELECT
    artist_id,
    full_name,
    specialty
FROM tattoo_artists
WHERE specialty = 'Realism';


-- =====================================================
-- Analizar búsqueda utilizando índice compuesto
-- =====================================================

EXPLAIN
SELECT
    appointment_id,
    appointment_date,
    appointment_time,
    status
FROM appointments
WHERE appointment_date = '2026-08-25'
AND appointment_time >= '12:00:00';


-- =====================================================
--  Verificar los índices creados
-- =====================================================

SHOW INDEX FROM appointments;

SHOW INDEX FROM tattoo_artists;


-- =====================================================
--  Consultas de verificación


SELECT *
FROM appointments
WHERE appointment_date = '2026-08-25';

SELECT *
FROM appointments
WHERE status = 'Scheduled';

SELECT *
FROM tattoo_artists
WHERE specialty = 'Realism';
CREATE TABLE participantes_carrera (
    participante_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    categoria VARCHAR(30) NOT NULL CHECK (categoria IN ('Juvenil', 'Abierta', 'Master', 'Elite')),
    distancia_km INT NOT NULL CHECK (distancia_km IN (5, 10, 21, 42)),
    monto_inscripcion_usd DECIMAL(8,2) NOT NULL CHECK (monto_inscripcion_usd >= 0.00),
    monto_donacion_usd DECIMAL(8,2) NOT NULL DEFAULT 0.00 CHECK (monto_donacion_usd >= 0.00),
    completo_carrera BOOLEAN NOT NULL DEFAULT TRUE,
    estado_pago VARCHAR(20) NOT NULL DEFAULT 'Confirmado' CHECK (estado_pago IN ('Confirmado', 'Pendiente', 'Cancelado'))
);
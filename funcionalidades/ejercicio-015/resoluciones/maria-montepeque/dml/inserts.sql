-- funcionalidades/ejercicio-015 - maria-montepeque
USE campuslands_mysql;

INSERT INTO proyectos_arquitectura (nombre, cliente, presupuesto_total, saldo_disponible, estado) VALUES
    ('Torre Vitral', 'Grupo Inmobiliario Aurea', 500000.00, 500000.00, 'activo'),
    ('Residencial Los Cedros', 'Constructora Meridian', 250000.00, 180000.00, 'activo'),
    ('Museo de Arte Contemporaneo', 'Fundacion Cultural Prisma', 800000.00, 800000.00, 'activo'),
    ('Puente Peatonal Norte', 'Municipalidad Central', 120000.00, 0.00, 'cerrado');

-- Pagos ya registrados que explican por que 'Residencial Los Cedros' y
-- 'Puente Peatonal Norte' no arrancan con el saldo completo.
INSERT INTO pagos_proveedores (proyecto_id, proveedor, concepto, monto, fecha_pago) VALUES
    (2, 'Estructuras Vertex', 'Calculo estructural', 40000.00, '2026-02-10'),
    (2, 'Render Studio Nix', 'Renders fotorrealistas', 30000.00, '2026-03-05'),
    (4, 'Ingenieria Vial SA', 'Diseno estructural del puente', 90000.00, '2025-11-01'),
    (4, 'Estudio Paisajismo Rio', 'Paisajismo y accesos', 30000.00, '2025-12-15');

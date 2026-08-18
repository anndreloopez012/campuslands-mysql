-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Datos iniciales y operaciones DML (INSERT y UPDATE) para el Ejercicio 023.
USE campuslands_mysql;

-- Limpiar la tabla para asegurar un estado inicial consistente en cada ejecución.
-- Esto es útil para pruebas, pero podría no ser deseable en un entorno de producción.
TRUNCATE TABLE basico_ejercicio_023;

-- Inserción de al menos 8 registros útiles con temática de arquitectura 3D.
INSERT INTO basico_ejercicio_023 (nombre, categoria, puntaje, estado) VALUES
('Modelo 3D Casa Moderna', 'arquitectura residencial', 75.20, 'activo'),
('Modelo 3D Edificio Corporativo', 'arquitectura comercial', 88.90, 'revision'),
('Modelo 3D Puente Colgante', 'ingenieria civil', 62.10, 'activo'),
('Modelo 3D Interior Loft', 'diseño de interiores', 91.50, 'activo'),
('Modelo 3D Rascacielos Eco', 'arquitectura sostenible', 85.00, 'activo'),
('Modelo 3D Urbanización', 'planificación urbana', 68.50, 'revision'),
('Modelo 3D Museo Arte', 'arquitectura cultural', 93.00, 'activo'),
('Modelo 3D Estación Tren', 'ingenieria de transporte', 55.70, 'inactivo');

-- Operaciones UPDATE para el Ejercicio 023.

-- 1. Actualizar el puntaje y estado de un modelo 3D específico (Ej: 'Modelo 3D Edificio Corporativo')
UPDATE basico_ejercicio_023
SET
    puntaje = 95.00,
    estado = 'activo'
WHERE
    nombre = 'Modelo 3D Edificio Corporativo';

-- 2. Actualizar la categoría y estado de modelos con un puntaje bajo (menor a 70.00)
UPDATE basico_ejercicio_023
SET
    categoria = 'requiere_mejora',
    estado = 'inactivo'
WHERE
    puntaje < 70.00;

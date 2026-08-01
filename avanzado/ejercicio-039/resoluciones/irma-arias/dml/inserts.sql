-- DML: Inserción y eliminación controlada de datos para kickboxing
USE db_kickboxing;

INSERT INTO peleadores_kickboxing (codigo_peleador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, estado_peleador) VALUES
('KB-001', 'Alex Pereira', 'Peso Semipesado', 28, 2, 'activo'),
('KB-002', 'Rico Verhoeven', 'Peso Pesado', 62, 10, 'activo'),
('KB-003', 'Giorgio Petrosyan', 'Peso Ligero', 104, 3, 'retirado'),
('KB-004', 'Superbon Singha Mawynn', 'Peso Pluma', 115, 35, 'activo'),
('KB-005', 'Tatoshi Ozawa', 'Peso Gallo', 30, 18, 'inactivo'),
('KB-006', 'Jonathan Haggerty', 'Peso Gallo', 25, 4, 'activo'),
('KB-007', 'Ilie Brisman', 'Peso Welter', 12, 15, 'inactivo'),
('KB-008', 'Test Inactivo Registro', 'Peso Pluma', 1, 8, 'inactivo');

-- Eliminación controlada (DELETE) para depurar registros no deseados o de prueba
-- 1. Eliminar registros de prueba o inactivos que cumplan con una condición estricta
DELETE FROM peleadores_kickboxing 
WHERE codigo_peleador = 'KB-008';

-- 2. Eliminar peleadores inactivos que posean más derrotas que victorias (depuración de historial)
DELETE FROM peleadores_kickboxing 
WHERE estado_peleador = 'inactivo' AND peleas_perdidas > peleas_ganadas;
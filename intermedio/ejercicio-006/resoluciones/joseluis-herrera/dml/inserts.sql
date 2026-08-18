INSERT INTO hiperdeportivos (id_auto, marca, modelo, pais_origen) VALUES
(1, 'Bugatti', 'Chiron Super Sport', 'Francia'),
(2, 'Koenigsegg', 'Jesko Absolut', 'Suecia'),
(3, 'Rimac', 'Nevera', 'Croacia'),
(4, 'Pagani', 'Utopia', 'Italia');

INSERT INTO caracteristicas_tecnicas (id_auto, tipo_caracteristica, valor) VALUES
(1, 'Color Exterior', 'Negro Fibra de Carbono'),
(1, 'Color Exterior', 'Azul Francia'),
(1, 'Material Chasis', 'Fibra de Carbono'),
(2, 'Color Exterior', 'Blanco Brillante'),
(2, 'Material Chasis', 'Fibra de Carbono'),
(3, 'Color Exterior', 'Gris Tormenta'),
(4, 'Color Exterior', 'Oro Antiguo'),
(4, 'Material Interior', 'Titanio y Cuero');

INSERT INTO mantenimientos (id_auto, tipo_servicio, costo) VALUES
(1, 'Cambio de Aceite Especial', 25000.00),
(1, 'Revision Aerodinamica', 12000.00),
(2, 'Calibracion de Transmision', 18000.00),
(3, 'Diagnostico de Baterias EV', 30000.00),
(4, 'Ajuste de Suspension', 15000.00);
.
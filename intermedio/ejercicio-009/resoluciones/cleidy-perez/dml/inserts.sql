-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Peleadores (nombre, alias, categoria_peso, gimnasio) VALUES
('Rico Verhoeven', 'The King of Kickboxing', 'Peso Pesado', 'SuperPro Sportcenter'),
('Badr Hari', 'The Golden Boy', 'Peso Pesado', 'Mike\'s Gym'),
('Gokhan Saki', 'The Rebel', 'Peso Semi-Pesado', 'SuperPro Sportcenter');

INSERT INTO Combates (peleador_rojo_id, peleador_azul_id, ganador_id, metodo) VALUES
(1, 2, 1, 'TKO'),
(2, 3, 2, 'KO');
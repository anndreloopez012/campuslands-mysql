-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO categorias
(nombre, peso_maximo)
VALUES
('Peso Mosca',57.00),
('Peso Gallo',61.00),
('Peso Pluma',66.00),
('Peso Ligero',70.00);

INSERT INTO peleadores
(categoria_id,nombre,edad,nacionalidad,victorias)
VALUES
(1,'Carlos Méndez',22,'Guatemala',8),
(1,'Luis Gómez',24,'México',10),
(2,'José Ramírez',27,'Colombia',14),
(2,'Pedro López',21,'Guatemala',5),
(3,'Mario Castillo',29,'Argentina',18),
(3,'Kevin Morales',25,'Perú',12),
(4,'Diego Hernández',30,'Chile',20),
(4,'Andrés Pérez',26,'Costa Rica',11);

INSERT INTO peleas
(peleador_id,rival,fecha,resultado)
VALUES
(1,'Juan Torres','2026-01-10','Victoria'),
(2,'Marco Díaz','2026-01-15','Victoria'),
(3,'Luis Castro','2026-02-03','Derrota'),
(4,'Pablo Ruiz','2026-02-12','Victoria'),
(5,'Andrés Silva','2026-03-01','Victoria'),
(6,'David Flores','2026-03-08','Empate'),
(7,'Carlos Ortiz','2026-03-20','Victoria'),
(8,'Miguel Soto','2026-04-01','Derrota');
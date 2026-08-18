-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO fabricantes
(nombre, pais_origen)
VALUES
('Bugatti','Francia'),
('Koenigsegg','Suecia'),
('Pagani','Italia'),
('Rimac','Croacia'),
('Ferrari','Italia'),
('Lamborghini','Italia'),
('McLaren','Reino Unido'),
('Aston Martin','Reino Unido');


INSERT INTO autos
(fabricante_id, modelo, anio, potencia_hp, velocidad_maxima, precio, combustible, estado)
VALUES
(1,'Chiron Super Sport',2024,1600,440,3900000.00,'Gasolina','Disponible'),
(2,'Jesko Absolut',2024,1600,531,3200000.00,'Gasolina','Disponible'),
(3,'Huayra R',2023,850,383,3100000.00,'Gasolina','Disponible'),
(4,'Nevera',2024,1914,412,2400000.00,'Eléctrico','Vendido'),
(5,'SF90 Stradale',2024,1000,340,625000.00,'Híbrido','Disponible'),
(6,'Revuelto',2024,1015,350,610000.00,'Híbrido','Disponible'),
(7,'Speedtail',2023,1035,403,2250000.00,'Híbrido','Vendido'),
(8,'Valkyrie',2023,1160,402,3000000.00,'Híbrido','Disponible');

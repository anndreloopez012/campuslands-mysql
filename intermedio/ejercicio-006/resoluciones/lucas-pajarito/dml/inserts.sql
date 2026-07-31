-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO marcas(nombre_marca, creador_marca)
VALUES
('Ferrari','Enzo Ferrari'),
('Bugatti','Ettore Bugatti'),
('Koenigsegg','Christian von Koenigsegg');

INSERT INTO modelo(nombre, Distribuidora)
VALUES
('LaFerrari','Ferrari'),
('Chiron','Bugatti'),
('Jesko','Koenigsegg');

INSERT INTO pais_origen(codigo_pais,nombre_pais)
VALUES
('ITA','Italia'),
('FRA','Francia'),
('SWE','Suecia');


INSERT INTO Autos_Hiperdeportivos_06
(id_marca,id_modelo,id_pais_origen,anio,potencia_hp,velocidad_max_kmh,precio_usd)
VALUES
(1,1,1,2024,963,350,1500000);
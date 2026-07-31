/*=========================================================
  EJERCICIO 006 - EXPLAIN
  Tema: Autos Hiperdeportivos
  Archivo: dml/inserts.sql
=========================================================*/

USE campuslands_mysql;

/*=========================================================
  INSERTS - MARCAS
=========================================================*/

INSERT INTO marcas (nombre_marca, fundador) VALUES
('Bugatti', 'Ettore Bugatti'),
('Koenigsegg', 'Christian von Koenigsegg'),
('Ferrari', 'Enzo Ferrari'),
('McLaren', 'Bruce McLaren'),
('Pagani', 'Horacio Pagani'),
('Lamborghini', 'Ferruccio Lamborghini'),
('Rimac', 'Mate Rimac'),
('Hennessey', 'John Hennessey');


/*=========================================================
  INSERTS - MODELOS
=========================================================*/

INSERT INTO modelos (nombre_modelo, tipo_motor) VALUES
('Chiron Super Sport 300+', 'W16 Quad Turbo'),
('Jesko Absolut', 'V8 Biturbo'),
('SF90 Stradale', 'V8 Híbrido'),
('Speedtail', 'V8 Híbrido'),
('Huayra R', 'V12 Atmosférico'),
('Revuelto', 'V12 Híbrido'),
('Nevera', 'Eléctrico'),
('Venom F5', 'V8 Biturbo');


/*=========================================================
  INSERTS - PAISES
=========================================================*/

INSERT INTO paises (codigo_iso, nombre_pais) VALUES
('FRA', 'Francia'),
('SWE', 'Suecia'),
('ITA', 'Italia'),
('GBR', 'Reino Unido'),
('HRV', 'Croacia'),
('USA', 'Estados Unidos');


/*=========================================================
  INSERTS - AUTOS HIPERDEPORTIVOS
=========================================================*/

INSERT INTO autos_hiperdeportivos
(id_marca,id_modelo,id_pais,anio,potencia_hp,velocidad_max_kmh,aceleracion_0_100,precio_usd,estado)
VALUES
(1,1,1,2022,1600,490,2.40,3900000.00,'Disponible'),

(2,2,2,2024,1600,531,2.50,3200000.00,'Disponible'),

(3,3,3,2023,986,340,2.50,625000.00,'Vendido'),

(4,4,4,2021,1035,403,2.90,2250000.00,'Disponible'),

(5,5,3,2022,850,383,3.00,3100000.00,'Disponible'),

(6,6,3,2024,1001,350,2.50,610000.00,'Vendido'),

(7,7,5,2023,1914,412,1.85,2400000.00,'Disponible'),

(8,8,6,2024,1817,500,2.60,2100000.00,'Disponible'),

(2,2,2,2025,1600,530,2.40,3400000.00,'Disponible'),

(1,1,1,2021,1500,480,2.60,3600000.00,'Vendido');
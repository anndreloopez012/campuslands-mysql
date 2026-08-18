USE campuslands_mysql;

INSERT INTO corredores_carreras_urbanas
(
    nombre,
    ciudad,
    categoria,
    edad,
    tiempo_minutos,
    distancia_km,
    estado
)
VALUES
('Juan Pérez','Guatemala','5K',24,24.80,5.00,'Finalizado'),
('Carlos Méndez','Antigua','10K',28,49.50,10.00,'Finalizado'),
('Luis Ramírez','Escuintla','21K',31,112.30,21.10,'Finalizado'),
('Miguel Castro','Quetzaltenango','5K',22,23.10,5.00,'Finalizado'),
('Andrés López','Cobán','42K',35,248.60,42.20,'Finalizado'),
('Kevin Morales','Petén','10K',26,55.00,10.00,'Retirado'),
('Fernando Ruiz','Jutiapa','21K',29,118.40,21.10,'Finalizado'),
('Ricardo Díaz','Zacapa','5K',21,26.70,5.00,'Inscrito'),
('José Herrera','Retalhuleu','42K',38,265.40,42.20,'Finalizado'),
('Mario Gómez','Mazatenango','10K',27,51.80,10.00,'Finalizado');
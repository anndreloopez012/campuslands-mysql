USE campuslands_mysql;

INSERT INTO jugadores_futbol_sala
(
    nombre,
    equipo,
    posicion,
    edad,
    goles,
    asistencias,
    salario,
    estado
)
VALUES
('Juan Pérez','Tigres FS','Pivot',24,18,9,4500.00,'Activo'),
('Carlos Méndez','Leones FS','Ala',26,14,12,4200.00,'Activo'),
('Luis Ramírez','Halcones FS','Portero',29,0,4,3900.00,'Activo'),
('Mario López','Titanes FS','Defensa',28,3,8,3700.00,'Activo'),
('Andrés Castillo','Guerreros FS','Pivot',22,20,6,4800.00,'Lesionado'),
('Kevin García','Águilas FS','Ala',23,15,10,4300.00,'Activo'),
('José Morales','Panteras FS','Defensa',27,4,5,3600.00,'Suspendido'),
('Miguel Díaz','Lobos FS','Pivot',21,12,7,4100.00,'Activo'),
('Fernando Ruiz','Dragones FS','Ala',25,11,13,4250.00,'Activo'),
('Ricardo Soto','Centauros FS','Portero',30,0,2,4000.00,'Activo');
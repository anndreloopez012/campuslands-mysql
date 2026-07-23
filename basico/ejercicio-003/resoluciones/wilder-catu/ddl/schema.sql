USE campuslands_mysql;

CREATE TABLE skins (
    id_skin INT PRIMARY KEY,
    nombre_skin VARCHAR(80),
    arma VARCHAR(40),
    rareza VARCHAR(30),
    categoria VARCHAR(30),
    valor DECIMAL(10,2),
    disponible BOOLEAN,
    fecha_obtencion DATE
);
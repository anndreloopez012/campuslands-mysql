USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS carreras_urbanas (
    carrera_id INT NOT NULL AUTO_INCREMENT,
    nombre_carrera VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    distancia_km DECIMAL(5,2) NOT NULL,
    fecha_carrera DATE NOT NULL,
    estado VARCHAR(30) NOT NULL,
    PRIMARY KEY (carrera_id)
);
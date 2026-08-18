USE campuslands_mysql;

DROP TABLE IF EXISTS corredores_carreras_urbanas;

CREATE TABLE corredores_carreras_urbanas (

    id_corredor INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(80) NOT NULL,

    ciudad VARCHAR(60) NOT NULL,

    categoria ENUM(
        '5K',
        '10K',
        '21K',
        '42K'
    ) NOT NULL,

    edad INT NOT NULL CHECK (edad >= 18),

    tiempo_minutos DECIMAL(6,2) NOT NULL CHECK (tiempo_minutos > 0),

    distancia_km DECIMAL(5,2) NOT NULL CHECK (distancia_km > 0),

    estado ENUM(
        'Inscrito',
        'Finalizado',
        'Retirado'
    ) NOT NULL

);
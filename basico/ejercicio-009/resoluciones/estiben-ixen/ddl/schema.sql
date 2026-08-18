USE campuslands_mysql;

DROP TABLE IF EXISTS peleadores_kickboxing;

CREATE TABLE peleadores_kickboxing (

    id_peleador INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(80) NOT NULL,

    pais VARCHAR(50) NOT NULL,

    categoria ENUM(
        'Mosca',
        'Gallo',
        'Pluma',
        'Ligero',
        'Welter',
        'Mediano',
        'Pesado'
    ) NOT NULL,

    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),

    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),

    edad INT NOT NULL CHECK (edad >= 18),

    estado ENUM(
        'Activo',
        'Retirado',
        'Suspendido'
    ) NOT NULL

);
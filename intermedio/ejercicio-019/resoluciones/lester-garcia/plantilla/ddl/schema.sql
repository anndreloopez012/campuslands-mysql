CREATE DATABASE ejercicio_19_int;
USE ejercicio_19_int;

CREATE TABLE paracaidistas (
    id_paracaidista INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nivel VARCHAR(30) NOT NULL,
    horas_vuelo INT NOT NULL,
    CHECK (nivel IN ('Principiante', 'Intermedio', 'Avanzado')),
    CHECK (horas_vuelo >= 0)
);

CREATE TABLE instructores (
    id_instructor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(80) NOT NULL,
    experiencia_anios INT NOT NULL,
    CHECK (experiencia_anios >= 0)
);

CREATE TABLE zonas_salto (
    id_zona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    altura_salto_metros INT NOT NULL,
    CHECK (altura_salto_metros > 0)
);

CREATE TABLE saltos (
    id_salto INT AUTO_INCREMENT PRIMARY KEY,
    id_instructor INT NOT NULL,
    id_zona INT NOT NULL,
    fecha_salto DATE NOT NULL,
    tipo_salto VARCHAR(40) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_instructor) REFERENCES instructores(id_instructor),
    FOREIGN KEY (id_zona) REFERENCES zonas_salto(id_zona),
    CHECK (costo > 0)
);

CREATE TABLE participantes_salto (
    id_salto INT NOT NULL,
    id_paracaidista INT NOT NULL,
    resultado VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_salto, id_paracaidista),
    FOREIGN KEY (id_salto) REFERENCES saltos(id_salto),
    FOREIGN KEY (id_paracaidista) REFERENCES paracaidistas(id_paracaidista),
    CHECK (resultado IN ('Exitoso', 'Reprogramado', 'Cancelado'))
);
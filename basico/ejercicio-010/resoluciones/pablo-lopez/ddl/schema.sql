DROP TABLE IF EXISTS carreras_urbanas;

CREATE TABLE carreras_urbanas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    corredor VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    distancia_km DECIMAL(4,1) NOT NULL,
    premio DECIMAL(10,2) NOT NULL CHECK(premio >= 0),
    posicion INT NOT NULL,
    estado ENUM('Finalizó','Abandonó') NOT NULL
);
DROP DATABASE IF EXISTS ejercicio_20_adv;
CREATE DATABASE ejercicio_20_adv;
USE ejercicio_20_adv;

CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE tattoo_artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(50) NOT NULL,
    experience_years INT NOT NULL
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    artist_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    tattoo_style VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Scheduled',
    price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (client_id) REFERENCES clients(client_id),

    FOREIGN KEY (artist_id) REFERENCES tattoo_artists(artist_id)
);
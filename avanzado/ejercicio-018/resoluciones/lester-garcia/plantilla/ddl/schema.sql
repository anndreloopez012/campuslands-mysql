CREATE DATABASE ejercicio_18_adv;
USE ejercicio_18_adv;

CREATE TABLE destinations (
    destination_id INT PRIMARY KEY AUTO_INCREMENT,
    destination_name VARCHAR(100) NOT NULL,
    country VARCHAR(80) NOT NULL,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE travelers (
    traveler_id INT PRIMARY KEY AUTO_INCREMENT,
    traveler_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    traveler_id INT NOT NULL,
    destination_id INT NOT NULL,
    travel_date DATE NOT NULL,
    days INT NOT NULL,
    total_cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (traveler_id) REFERENCES travelers(traveler_id),
    FOREIGN KEY (destination_id) REFERENCES destinations(destination_id)
);
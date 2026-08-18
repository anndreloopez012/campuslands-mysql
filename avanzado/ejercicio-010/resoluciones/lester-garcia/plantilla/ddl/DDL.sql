CREATE DATABASE ejercicio_10_adv;
USE ejercicio_10_adv;

CREATE TABLE runners (
    runner_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE races (
    race_id INT PRIMARY KEY AUTO_INCREMENT,
    race_name VARCHAR(100) NOT NULL,
    race_date DATE NOT NULL,
    location VARCHAR(50) NOT NULL
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    distance_km INT NOT NULL
);

CREATE TABLE registrations (
    registration_id INT PRIMARY KEY AUTO_INCREMENT,
    runner_id INT NOT NULL,
    race_id INT NOT NULL,
    category_id INT NOT NULL,
    registration_fee DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (runner_id) REFERENCES runners(runner_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
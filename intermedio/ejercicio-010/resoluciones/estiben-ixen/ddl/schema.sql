-- Crear base de datos

DROP DATABASE IF EXISTS urban_races_db;

CREATE DATABASE urban_races_db;

USE urban_races_db;



-- Tabla participantes

CREATE TABLE participants (

    id_participant INT AUTO_INCREMENT PRIMARY KEY,

    runner_code VARCHAR(20) NOT NULL UNIQUE,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(100) NOT NULL UNIQUE,

    birth_date DATE NOT NULL,

    country VARCHAR(50) NOT NULL

);



-- Tabla carreras

CREATE TABLE races (

    id_race INT AUTO_INCREMENT PRIMARY KEY,

    race_code VARCHAR(20) NOT NULL UNIQUE,

    race_name VARCHAR(100) NOT NULL,

    city VARCHAR(80) NOT NULL,

    race_date DATE NOT NULL,

    distance_km DECIMAL(5,2) NOT NULL,


    CONSTRAINT chk_distance

    CHECK(distance_km > 0)

);



-- Tabla inscripciones

CREATE TABLE registrations (

    id_registration INT AUTO_INCREMENT PRIMARY KEY,

    registration_code VARCHAR(20) NOT NULL UNIQUE,

    id_participant INT NOT NULL,

    id_race INT NOT NULL,

    registration_date DATE NOT NULL,


    CONSTRAINT fk_registration_participant

    FOREIGN KEY(id_participant)

    REFERENCES participants(id_participant),


    CONSTRAINT fk_registration_race

    FOREIGN KEY(id_race)

    REFERENCES races(id_race)

);



-- Tabla resultados

CREATE TABLE results (

    id_result INT AUTO_INCREMENT PRIMARY KEY,

    id_registration INT NOT NULL UNIQUE,

    final_position INT NOT NULL,

    finish_time TIME NOT NULL,


    CONSTRAINT fk_result_registration

    FOREIGN KEY(id_registration)

    REFERENCES registrations(id_registration),


    CONSTRAINT chk_position

    CHECK(final_position > 0)

);
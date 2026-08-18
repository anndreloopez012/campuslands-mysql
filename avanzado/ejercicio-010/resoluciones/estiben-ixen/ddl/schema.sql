-- Crear base de datos

DROP DATABASE IF EXISTS urban_races_backup_db;

CREATE DATABASE urban_races_backup_db;

USE urban_races_backup_db;



-- Participantes

CREATE TABLE participants (

    id_participant INT AUTO_INCREMENT PRIMARY KEY,

    runner_code VARCHAR(20) UNIQUE NOT NULL,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    country VARCHAR(50) NOT NULL

);



-- Carreras

CREATE TABLE races (

    id_race INT AUTO_INCREMENT PRIMARY KEY,

    race_code VARCHAR(20) UNIQUE NOT NULL,

    race_name VARCHAR(100) NOT NULL,

    city VARCHAR(80) NOT NULL,

    distance_km DECIMAL(5,2) NOT NULL,


    CONSTRAINT chk_distance

    CHECK(distance_km > 0)

);



-- Inscripciones

CREATE TABLE registrations (

    id_registration INT AUTO_INCREMENT PRIMARY KEY,

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



-- Resultados

CREATE TABLE race_results (

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
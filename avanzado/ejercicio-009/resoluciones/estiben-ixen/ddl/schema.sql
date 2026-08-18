-- Crear base de datos

DROP DATABASE IF EXISTS kickboxing_locks_db;

CREATE DATABASE kickboxing_locks_db;

USE kickboxing_locks_db;



-- Tabla peleadores

CREATE TABLE fighters (

    id_fighter INT AUTO_INCREMENT PRIMARY KEY,

    fighter_name VARCHAR(80) NOT NULL,

    nationality VARCHAR(50) NOT NULL,

    victories INT DEFAULT 0,

    status ENUM('active','inactive') DEFAULT 'active',


    CONSTRAINT chk_victories

    CHECK(victories >= 0)

);



-- Tabla eventos

CREATE TABLE events (

    id_event INT AUTO_INCREMENT PRIMARY KEY,

    event_name VARCHAR(100) NOT NULL,

    event_date DATE NOT NULL

);



-- Tabla combates

CREATE TABLE fights (

    id_fight INT AUTO_INCREMENT PRIMARY KEY,

    id_event INT NOT NULL,

    fighter_one INT NOT NULL,

    fighter_two INT NOT NULL,

    winner_id INT NULL,

    fight_status ENUM(
        'scheduled',
        'finished'
    ) DEFAULT 'scheduled',


    CONSTRAINT fk_fight_event

    FOREIGN KEY(id_event)

    REFERENCES events(id_event),


    CONSTRAINT fk_fighter_one

    FOREIGN KEY(fighter_one)

    REFERENCES fighters(id_fighter),


    CONSTRAINT fk_fighter_two

    FOREIGN KEY(fighter_two)

    REFERENCES fighters(id_fighter),


    CONSTRAINT fk_winner

    FOREIGN KEY(winner_id)

    REFERENCES fighters(id_fighter)

);
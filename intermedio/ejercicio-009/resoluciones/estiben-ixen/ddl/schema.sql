-- Crear base de datos

DROP DATABASE IF EXISTS kickboxing_db;

CREATE DATABASE kickboxing_db;

USE kickboxing_db;



-- Tabla entrenadores

CREATE TABLE trainers (

    id_trainer INT AUTO_INCREMENT PRIMARY KEY,

    trainer_name VARCHAR(80) NOT NULL,

    experience_years INT NOT NULL,


    CONSTRAINT chk_trainer_experience

    CHECK(experience_years >= 0)

);



-- Tabla categorias de peso

CREATE TABLE weight_categories (

    id_category INT AUTO_INCREMENT PRIMARY KEY,

    category_name VARCHAR(50) NOT NULL,

    minimum_weight DECIMAL(5,2),

    maximum_weight DECIMAL(5,2),


    CONSTRAINT chk_weight_range

    CHECK(maximum_weight > minimum_weight)

);



-- Tabla peleadores

CREATE TABLE fighters (

    id_fighter INT AUTO_INCREMENT PRIMARY KEY,

    id_trainer INT NOT NULL,

    id_category INT NOT NULL,

    fighter_name VARCHAR(80) NOT NULL,

    nationality VARCHAR(50) NOT NULL,

    victories INT DEFAULT 0,


    CONSTRAINT fk_fighter_trainer

    FOREIGN KEY(id_trainer)

    REFERENCES trainers(id_trainer),


    CONSTRAINT fk_fighter_category

    FOREIGN KEY(id_category)

    REFERENCES weight_categories(id_category),


    CONSTRAINT chk_victories

    CHECK(victories >= 0)

);



-- Tabla combates

CREATE TABLE fights (

    id_fight INT AUTO_INCREMENT PRIMARY KEY,

    fighter_one INT NOT NULL,

    fighter_two INT NOT NULL,

    fight_date DATE NOT NULL,

    event_name VARCHAR(100) NOT NULL,


    CONSTRAINT fk_fight_fighter_one

    FOREIGN KEY(fighter_one)

    REFERENCES fighters(id_fighter),


    CONSTRAINT fk_fight_fighter_two

    FOREIGN KEY(fighter_two)

    REFERENCES fighters(id_fighter)

);



-- Tabla resultados

CREATE TABLE fight_results (

    id_result INT AUTO_INCREMENT PRIMARY KEY,

    id_fight INT NOT NULL,

    winner_id INT NOT NULL,

    fight_method VARCHAR(50) NOT NULL,


    CONSTRAINT fk_result_fight

    FOREIGN KEY(id_fight)

    REFERENCES fights(id_fight),


    CONSTRAINT fk_result_winner

    FOREIGN KEY(winner_id)

    REFERENCES fighters(id_fighter)

);
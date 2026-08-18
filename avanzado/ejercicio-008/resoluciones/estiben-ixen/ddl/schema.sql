-- Crear base de datos

DROP DATABASE IF EXISTS futsal_security_db;

CREATE DATABASE futsal_security_db;

USE futsal_security_db;



-- Tabla equipos

CREATE TABLE teams (

    id_team INT AUTO_INCREMENT PRIMARY KEY,

    team_name VARCHAR(80) NOT NULL,

    city VARCHAR(80) NOT NULL,

    status ENUM('active','inactive') DEFAULT 'active'

);



-- Tabla jugadores

CREATE TABLE players (

    id_player INT AUTO_INCREMENT PRIMARY KEY,

    id_team INT NOT NULL,

    player_name VARCHAR(80) NOT NULL,

    position VARCHAR(50) NOT NULL,

    age INT NOT NULL,


    CONSTRAINT fk_player_team

    FOREIGN KEY(id_team)

    REFERENCES teams(id_team),


    CONSTRAINT chk_age

    CHECK(age >= 15)

);



-- Tabla partidos

CREATE TABLE matches (

    id_match INT AUTO_INCREMENT PRIMARY KEY,

    home_team INT NOT NULL,

    away_team INT NOT NULL,

    match_date DATE NOT NULL,

    home_score INT DEFAULT 0,

    away_score INT DEFAULT 0,


    CONSTRAINT fk_home_team

    FOREIGN KEY(home_team)

    REFERENCES teams(id_team),


    CONSTRAINT fk_away_team

    FOREIGN KEY(away_team)

    REFERENCES teams(id_team)

);



-- Tabla estadísticas

CREATE TABLE statistics (

    id_statistics INT AUTO_INCREMENT PRIMARY KEY,

    id_player INT NOT NULL,

    goals INT DEFAULT 0,

    assists INT DEFAULT 0,


    CONSTRAINT fk_statistics_player

    FOREIGN KEY(id_player)

    REFERENCES players(id_player)

);
-- Crear base de datos

DROP DATABASE IF EXISTS futsal_league_db;

CREATE DATABASE futsal_league_db;

USE futsal_league_db;



-- Tabla ciudades

CREATE TABLE cities (

    id_city INT AUTO_INCREMENT PRIMARY KEY,

    city_name VARCHAR(80) NOT NULL,

    country VARCHAR(80) NOT NULL

);



-- Tabla entrenadores

CREATE TABLE coaches (

    id_coach INT AUTO_INCREMENT PRIMARY KEY,

    coach_name VARCHAR(80) NOT NULL,

    experience_years INT NOT NULL,


    CONSTRAINT chk_experience

    CHECK(experience_years >= 0)

);



-- Tabla equipos

CREATE TABLE teams (

    id_team INT AUTO_INCREMENT PRIMARY KEY,

    team_name VARCHAR(80) NOT NULL,

    id_city INT NOT NULL,

    id_coach INT NOT NULL,

    status ENUM('active','inactive') DEFAULT 'active',


    CONSTRAINT fk_team_city

    FOREIGN KEY(id_city)

    REFERENCES cities(id_city),


    CONSTRAINT fk_team_coach

    FOREIGN KEY(id_coach)

    REFERENCES coaches(id_coach)

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


    CONSTRAINT chk_player_age

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


    CONSTRAINT fk_match_home

    FOREIGN KEY(home_team)

    REFERENCES teams(id_team),


    CONSTRAINT fk_match_away

    FOREIGN KEY(away_team)

    REFERENCES teams(id_team),


    CONSTRAINT chk_score

    CHECK(home_score >= 0 AND away_score >= 0)

);



-- Estadisticas individuales

CREATE TABLE player_statistics (

    id_statistics INT AUTO_INCREMENT PRIMARY KEY,

    id_player INT NOT NULL,

    id_match INT NOT NULL,

    goals INT DEFAULT 0,

    assists INT DEFAULT 0,


    CONSTRAINT fk_stat_player

    FOREIGN KEY(id_player)

    REFERENCES players(id_player),


    CONSTRAINT fk_stat_match

    FOREIGN KEY(id_match)

    REFERENCES matches(id_match),


    CONSTRAINT chk_goals

    CHECK(goals >= 0),


    CONSTRAINT chk_assists

    CHECK(assists >= 0)

);
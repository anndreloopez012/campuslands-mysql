-- Crear base de datos

DROP DATABASE IF EXISTS football_league_db;

CREATE DATABASE football_league_db;

USE football_league_db;



-- Tabla equipos

CREATE TABLE teams (

    id_team INT AUTO_INCREMENT PRIMARY KEY,

    team_name VARCHAR(80) NOT NULL,

    city VARCHAR(80) NOT NULL,

    founded_year YEAR NOT NULL,

    status ENUM('active','inactive') DEFAULT 'active'

);



-- Tabla jugadores

CREATE TABLE players (

    id_player INT AUTO_INCREMENT PRIMARY KEY,

    id_team INT NOT NULL,

    player_name VARCHAR(80) NOT NULL,

    position VARCHAR(50) NOT NULL,

    shirt_number INT NOT NULL,

    birth_date DATE NOT NULL,


    CONSTRAINT fk_player_team

    FOREIGN KEY (id_team)

    REFERENCES teams(id_team),


    CONSTRAINT chk_shirt_number

    CHECK(shirt_number > 0)

);



-- Tabla partidos

CREATE TABLE matches (

    id_match INT AUTO_INCREMENT PRIMARY KEY,

    home_team INT NOT NULL,

    away_team INT NOT NULL,

    match_date DATE NOT NULL,

    home_goals INT DEFAULT 0,

    away_goals INT DEFAULT 0,


    CONSTRAINT fk_home_team

    FOREIGN KEY(home_team)

    REFERENCES teams(id_team),


    CONSTRAINT fk_away_team

    FOREIGN KEY(away_team)

    REFERENCES teams(id_team),


    CONSTRAINT chk_goals

    CHECK(home_goals >= 0 AND away_goals >= 0)

);



-- Tabla estadisticas por jugador y partido

CREATE TABLE player_statistics (

    id_statistics INT AUTO_INCREMENT PRIMARY KEY,

    id_player INT NOT NULL,

    id_match INT NOT NULL,

    goals INT DEFAULT 0,

    assists INT DEFAULT 0,


    CONSTRAINT fk_statistics_player

    FOREIGN KEY(id_player)

    REFERENCES players(id_player),


    CONSTRAINT fk_statistics_match

    FOREIGN KEY(id_match)

    REFERENCES matches(id_match),


    CONSTRAINT chk_player_goals

    CHECK(goals >= 0),


    CONSTRAINT chk_player_assists

    CHECK(assists >= 0)

);
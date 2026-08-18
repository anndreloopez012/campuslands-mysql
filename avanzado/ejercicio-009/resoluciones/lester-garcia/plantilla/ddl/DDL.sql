CREATE DATABASE ejercicio_09_adv;
USE ejercicio_09_adv;

CREATE TABLE gyms(
gym_id INT PRIMARY KEY AUTO_INCREMENT,
gym_name VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL
)ENGINE = INNODB;

CREATE TABLE fighters (
fighter_id INT PRIMARY KEY AUTO_INCREMENT,
fighter_name VARCHAR(100) NOT NULL,
weight_class VARCHAR(30)NOT NULL,
age INT NOT NULL,
gym_id INT NOT NULL,
FOREIGN KEY (gym_id) REFERENCES gyms(gym_id)
)ENGINE = INNODB;

CREATE TABLE tournaments(
tournament_id INT PRIMARY KEY AUTO_INCREMENT,
tournament_name VARCHAR(100) NOT NULL,
event_date DATE NOT NULL,
location VARCHAR(50) NOT NULL
)ENGINE = INNODB;

CREATE TABLE fights(
fight_id INT PRIMARY KEY AUTO_INCREMENT,
fighter_id INT NOT NULL,
tournament_id INT NOT NULL,
result VARCHAR(20) NOT NULL,
rounds INT NOT NULL,
FOREIGN KEY (fighter_id) REFERENCES fighters(fighter_id),
FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
)ENGINE = INNODB;








CREATE DATABASE skydiving_management;
USE skydiving_management;

CREATE TABLE skydivers (
    skydiver_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    experience_level VARCHAR(30) NOT NULL,
    total_jumps INT NOT NULL DEFAULT 0,
    status VARCHAR(30) NOT NULL DEFAULT 'Active'
);

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    certification_level VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Active'
);

CREATE TABLE equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    equipment_code VARCHAR(30) NOT NULL UNIQUE,
    equipment_type VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Available'
);

CREATE TABLE jumps (
    jump_id INT PRIMARY KEY AUTO_INCREMENT,
    skydiver_id INT NOT NULL,
    instructor_id INT NOT NULL,
    equipment_id INT NOT NULL,
    jump_date DATE NOT NULL,
    altitude INT NOT NULL,
    jump_type VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Completed',

    FOREIGN KEY (skydiver_id)
        REFERENCES skydivers(skydiver_id),

    FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id),

    FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id)
);
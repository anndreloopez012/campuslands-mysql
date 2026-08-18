CREATE DATABASE ejercicio_06_adv;
USE ejercicio_06_adv;

CREATE TABLE brands (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

CREATE TABLE cars (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    model_name VARCHAR(60) NOT NULL,
    production_year YEAR NOT NULL,
    horsepower INT NOT NULL,
    price DECIMAL(12,2) NOT NULL,
    brand_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    INDEX idx_brand (brand_id),
    INDEX idx_horsepower (horsepower)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    sale_date DATE NOT NULL,
    total DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    INDEX idx_customer (customer_id),
    INDEX idx_car (car_id)
);
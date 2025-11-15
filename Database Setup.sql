CREATE DATABASE Library_db;
USE Library_db;
SET SQL_SAFE_UPDATES=0;

CREATE TABLE Members (
member_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(100),
address VARCHAR(200)
);

CREATE TABLE Books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
author VARCHAR(100),
publisher_date DATE,
genre VARCHAR(100),
total_copies INT DEFAULT 1
);

CREATE TABLE Records (
record_id INT AUTO_INCREMENT PRIMARY KEY,
member_id INT,
book_id INT,
borrow_date DATE,
return_date DATE,
FOREIGN KEY (member_id) REFERENCES Members (member_id),
FOREIGN KEY (book_id) REFERENCES Books (book_id)
);

CREATE TABLE Staffs (
staff_id INT AUTO_INCREMENT PRIMARY KEY,
staff_name VARCHAR(100),
staff_position VARCHAR(100)
);

SHOW TABLES;

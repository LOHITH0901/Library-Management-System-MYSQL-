CREATE TABLE Authors(author_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100));
CREATE TABLE Categories(category_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(50));
CREATE TABLE Books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(150),author_id INT,category_id INT,isbn VARCHAR(20) UNIQUE,
total_copies INT,available_copies INT,
FOREIGN KEY(author_id) REFERENCES Authors(author_id),
FOREIGN KEY(category_id) REFERENCES Categories(category_id));
CREATE TABLE Members(
member_id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100),email VARCHAR(100) UNIQUE,phone VARCHAR(15),join_date DATE);
CREATE TABLE Borrowed_Books(
borrow_id INT AUTO_INCREMENT PRIMARY KEY,
member_id INT,book_id INT,borrow_date DATE,due_date DATE,return_date DATE,fine DECIMAL(8,2) DEFAULT 0,
FOREIGN KEY(member_id) REFERENCES Members(member_id),
FOREIGN KEY(book_id) REFERENCES Books(book_id));
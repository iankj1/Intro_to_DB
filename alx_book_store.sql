CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR (215) NOT NULL
);

CREATE TABLE Books(
book_id INT PRIMARY KEY AUTO_INCREMENT, 
title VARCHAR (130) NOT NULL,
author_id INT NOT NULL,
FOREIGN KEY(author_id) REFERENCES Authors(author_id),
price DECIMAL(10, 2) NOT NULL,
publication_date DATE NOT NULL
);

CREATE TABLE Customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE NOT NULL,
address TEXT
);

CREATE TABLE Orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
  order_date DATE,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
orderdetail_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
book_id INT NOT NULL,
FOREIGN KEY(order_id) REFERENCES Orders(order_id),
FOREIGN KEY(book_id) REFERENCES Books(book_id),
quantity DECIMAL(10, 2) NOT NULL
);

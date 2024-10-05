CREATE DATABASE IF NOT EXISTS somebank;

USE somebank;


-- Defined customer information table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL
);

-- Accounts Table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_type ENUM('savings', 'current', 'zero_balance') NOT NULL,
    balance DECIMAL(10, 2) NOT NULL CHECK (balance >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT NOT NULL,
    transaction_type ENUM('deposit', 'withdrawal', 'transfer') NOT NULL,
    amount DECIMAL(10, 2) NOT NULL CHECK (amount > 0),
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE ON UPDATE CASCADE
);

SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Transactions;
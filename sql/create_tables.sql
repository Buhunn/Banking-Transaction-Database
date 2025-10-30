-- To Create the database
CREATE DATABASE BankingDB;
USE BankingDB;

-- Branch table
CREATE TABLE Branch (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(100)
);

-- Employee table
CREATE TABLE Employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    position VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id));

-- Customer table
CREATE TABLE Customer (
    cust_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20));

-- Account table
CREATE TABLE Account (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    branch_id INT,
    balance DECIMAL(10,2),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id));

-- Transaction table
CREATE TABLE Transaction (
    trans_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    trans_type ENUM('Deposit', 'Withdrawal', 'Transfer'),
    amount DECIMAL(10,2),
    trans_date DATETIME,
    FOREIGN KEY (account_id) REFERENCES Account(account_id));

-- create_tables.sql

CREATE DATABASE BankingDB;
USE BankingDB;

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    position VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Customer (
    cust_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT,
    branch_id INT,
    balance DECIMAL(10,2),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Transaction (
    trans_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    trans_type ENUM('Deposit', 'Withdrawal', 'Transfer'),
    amount DECIMAL(10,2),
    trans_date DATETIME,
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);

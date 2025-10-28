-- insert_data.sql
-- Populate sample data for the Banking Transaction Database

USE banking_db;

-- Insert Branches
INSERT INTO Branch (Branch_Name, City) VALUES
('Central Branch', 'Amsterdam'),
('Westside Branch', 'Rotterdam'),
('Eastside Branch', 'Utrecht');

-- Insert Employees
INSERT INTO Employee (First_Name, Last_Name, Position, Branch_ID) VALUES
('John', 'Smith', 'Manager', 1),
('Ella', 'Johnson', 'Teller', 1),
('Michael', 'Brown', 'Loan Officer', 2),
('Sarah', 'Williams', 'Customer Service', 3);

-- Insert Customers
INSERT INTO Customer (First_Name, Last_Name, City, Date_Joined) VALUES
('David', 'Miller', 'Amsterdam', '2023-04-12'),
('Grace', 'Wilson', 'Rotterdam', '2023-05-22'),
('Daniel', 'Taylor', 'Utrecht', '2023-06-15'),
('Emma', 'Anderson', 'Amsterdam', '2023-07-01');

-- Insert Accounts
INSERT INTO Account (Account_No, Customer_ID, Branch_ID, Account_Type, Balance) VALUES
(1001, 1, 1, 'Savings', 5000.00),
(1002, 2, 2, 'Checking', 2200.00),
(1003, 3, 3, 'Savings', 7500.00),
(1004, 4, 1, 'Checking', 3400.00);

-- Insert Transactions
INSERT INTO Transactions (Account_No, Transaction_Date, Transaction_Type, Amount) VALUES
(1001, '2023-07-12', 'Deposit', 1200.00),
(1001, '2023-07-18', 'Withdrawal', 200.00),
(1002, '2023-08-05', 'Deposit', 1500.00),
(1002, '2023-08-10', 'Withdrawal', 300.00),
(1003, '2023-08-15', 'Deposit', 2000.00),
(1003, '2023-08-20', 'Withdrawal', 400.00),
(1004, '2023-08-25', 'Deposit', 1800.00),
(1004, '2023-08-30', 'Withdrawal', 500.00);

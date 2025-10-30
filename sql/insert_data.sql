USE BankingDB;

-- Insert branches
INSERT INTO Branch (branch_name, city) VALUES
('Downtown Branch', 'Lagos'),
('Ikeja Branch', 'Lagos'),
('Abuja Central Branch', 'Abuja'),
('Port Harcourt Branch', 'Port Harcourt');

-- Insert employees
INSERT INTO Employee (emp_name, position, branch_id) VALUES
('John Smith', 'Branch Manager', 1),
('Mary Johnson', 'Teller', 1),
('Peter Okoye', 'Account Officer', 2),
('Grace Nwosu', 'Customer Service', 3),
('David Lee', 'Auditor', 4);

-- Insert customers
INSERT INTO Customer (cust_name, email, phone) VALUES
('Alice Brown', 'alice@example.com', '08012345678'),
('James Uche', 'jamesu@example.com', '08023456789'),
('Chinwe Eze', 'chinwe@example.com', '08034567890'),
('Michael Green', 'mikeg@example.com', '08045678901'),
('Fatima Bello', 'fatima@example.com', '08056789012');

-- Insert accounts
INSERT INTO Account (cust_id, branch_id, balance) VALUES
(1, 1, 12000.00),
(2, 2, 5400.00),
(3, 3, 9800.00),
(4, 4, 15000.00),
(5, 1, 7000.00);

-- Insert transactions
INSERT INTO Transaction (account_id, trans_type, amount, trans_date) VALUES
(1, 'Deposit', 3000.00, '2025-01-02 10:12:00'),
(1, 'Withdrawal', 500.00, '2025-01-03 12:15:00'),
(1, 'Transfer', 1500.00, '2025-01-04 09:30:00'),
(2, 'Deposit', 2200.00, '2025-01-05 13:45:00'),
(2, 'Withdrawal', 1200.00, '2025-01-07 14:22:00'),
(3, 'Deposit', 4500.00, '2025-01-08 11:10:00'),
(3, 'Withdrawal', 300.00, '2025-01-09 09:18:00'),
(4, 'Deposit', 10000.00, '2025-01-10 08:05:00'),
(4, 'Withdrawal', 2500.00, '2025-01-12 11:50:00'),
(5, 'Transfer', 1800.00, '2025-01-13 12:40:00'),
(5, 'Deposit', 2000.00, '2025-01-14 13:00:00'),
(1, 'Withdrawal', 700.00, '2025-01-15 14:15:00'),
(2, 'Transfer', 900.00, '2025-01-16 10:50:00'),
(3, 'Withdrawal', 1200.00, '2025-01-17 09:40:00'),
(4, 'Deposit', 2500.00, '2025-01-18 15:05:00'),
(5, 'Withdrawal', 600.00, '2025-01-19 13:30:00'),
(1, 'Deposit', 4000.00, '2025-01-20 16:00:00'),
(2, 'Withdrawal', 800.00, '2025-01-21 09:15:00'),
(3, 'Transfer', 500.00, '2025-01-22 14:10:00'),
(4, 'Withdrawal', 700.00, '2025-01-23 11:20:00'),
(5, 'Deposit', 1000.00, '2025-01-24 10:30:00'),
(1, 'Transfer', 300.00, '2025-01-25 12:00:00'),
(2, 'Deposit', 500.00, '2025-01-26 14:15:00'),
(3, 'Withdrawal', 900.00, '2025-01-27 09:10:00'),
(4, 'Deposit', 4000.00, '2025-01-28 11:45:00'),
(5, 'Transfer', 700.00, '2025-01-29 13:25:00'),
(1, 'Deposit', 1500.00, '2025-01-30 09:50:00'),
(2, 'Withdrawal', 1200.00, '2025-02-01 10:40:00'),
(3, 'Deposit', 600.00, '2025-02-02 11:10:00'),
(4, 'Transfer', 2500.00, '2025-02-03 12:30:00'),
(5, 'Withdrawal', 400.00, '2025-02-04 09:55:00'),
(1, 'Deposit', 2000.00, '2025-02-05 08:15:00'),
(2, 'Withdrawal', 1000.00, '2025-02-06 09:30:00'),
(3, 'Transfer', 800.00, '2025-02-07 10:20:00'),
(4, 'Deposit', 1200.00, '2025-02-08 11:00:00'),
(5, 'Withdrawal', 600.00, '2025-02-09 12:45:00'),
(1, 'Deposit', 900.00, '2025-02-10 13:15:00'),
(2, 'Withdrawal', 1100.00, '2025-02-11 14:00:00'),
(3, 'Deposit', 1400.00, '2025-02-12 15:20:00'),
(4, 'Withdrawal', 500.00, '2025-02-13 16:05:00'),
(5, 'Deposit', 700.00, '2025-02-14 09:40:00');

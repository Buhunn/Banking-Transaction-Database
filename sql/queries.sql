USE BankingDB;

-- Fraud detection
SELECT account_id, COUNT(*) AS num_large_tx, SUM(amount) AS total_amount
FROM Transaction
WHERE amount > 5000
GROUP BY account_id
HAVING num_large_tx > 1;

-- Customer spending analysis
SELECT c.cust_name, SUM(t.amount) AS total_withdrawn
FROM Customer c
JOIN Account a ON c.cust_id = a.cust_id
JOIN Transaction t ON a.account_id = t.account_id
WHERE t.trans_type = 'Withdrawal'
GROUP BY c.cust_name
ORDER BY total_withdrawn DESC;

-- Branch performance (total transaction amount per branch)
SELECT b.branch_name, SUM(t.amount) AS total_transaction_value
FROM Branch b
JOIN Account a ON b.branch_id = a.branch_id
JOIN Transaction t ON a.account_id = t.account_id
GROUP BY b.branch_name
ORDER BY total_transaction_value DESC;

-- Average account balance per branch
SELECT b.branch_name, AVG(a.balance) AS avg_balance
FROM Branch b
JOIN Account a ON b.branch_id = a.branch_id
GROUP BY b.branch_name;

-- Query 1
SELECT * FROM Users;

-- Query 2
SELECT * FROM Wallets;

-- Query 3
SELECT * FROM Transactions;

-- Query 4
SELECT *
FROM Wallets
WHERE WalletBalance > 60000;

-- Query 5
SELECT *
FROM Transactions
WHERE Amount > 10000;

-- Query 6
SELECT
u.FirstName,
u.LastName,
w.WalletBalance
FROM Users u
JOIN Wallets w
ON u.UserID = w.UserID;

-- Query 7
SELECT *
FROM Wallets
ORDER BY WalletBalance DESC;

-- Indexes
CREATE INDEX idx_users_email
ON Users(Email);

CREATE INDEX idx_transaction_date
ON Transactions(TransactionDate);

-- View Indexes
SHOW INDEX FROM Users;

SHOW INDEX FROM Transactions;
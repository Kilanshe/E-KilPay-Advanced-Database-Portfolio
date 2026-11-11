-- COMMIT Example

START TRANSACTION;

UPDATE Wallets
SET WalletBalance = WalletBalance - 5000
WHERE WalletID = 1;

UPDATE Wallets
SET WalletBalance = WalletBalance + 5000
WHERE WalletID = 2;

COMMIT;

-- Verify

SELECT * FROM Wallets;


-- ROLLBACK Example

START TRANSACTION;

UPDATE Wallets
SET WalletBalance = WalletBalance - 10000
WHERE WalletID = 1;

ROLLBACK;

-- Verify

SELECT * FROM Wallets;
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    DateCreated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Wallets (
    WalletID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    WalletBalance DECIMAL(12,2),
    WalletStatus VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    WalletID INT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(12,2),
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(20),
    FOREIGN KEY (WalletID) REFERENCES Wallets(WalletID)
);

CREATE TABLE Agents (
    AgentID INT AUTO_INCREMENT PRIMARY KEY,
    AgentName VARCHAR(100),
    Location VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Transfers (
    TransferID INT AUTO_INCREMENT PRIMARY KEY,
    SenderWalletID INT,
    ReceiverWalletID INT,
    Amount DECIMAL(12,2),
    TransferDate DATETIME DEFAULT CURRENT_TIMESTAMP
);
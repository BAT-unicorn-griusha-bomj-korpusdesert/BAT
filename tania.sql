--table orders 
CREATE TABLE
    Orders (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        TotalPrice money NOT NULL,
        Time DATETIME NOT NULL,
        Address VARCHAR(255) NOT NULL,
        DeliveryTime DATETIME NULL,
        UserId INT NOT NULL references Users (Id),
    );

-- table OrderProducts
CREATE TABLE
    OrderProducts (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        OrderId INT NOT NULL references Orders (Id),
        ProductId INT NOT NULL references Products (Id),
        Amount INT NOT NULL,
    );      

    -- table Feedback
CREATE TABLE
    Feedback (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        UserId INT NOT NULL references Users (Id),
        Image VARCHAR(255) NULL,
        Text VARCHAR(255) NOT NULL,
        Date DATETIME NOT NULL,
        Rating INT NOT NULL CHECK (Rating >= 1 AND Rating <= 5)
    );
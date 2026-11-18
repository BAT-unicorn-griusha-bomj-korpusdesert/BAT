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

-- table OrderItems
CREATE TABLE
    OrderItems (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        OrderId INT NOT NULL references Orders (Id),
        ProductId INT NOT NULL references Products (Id),
        Quantity INT NOT NULL,
        Price money NOT NULL
    );
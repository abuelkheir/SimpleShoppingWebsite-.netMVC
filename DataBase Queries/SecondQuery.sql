CREATE TABLE Products (
ProductID INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR(100),
ProductDescription VARCHAR(255),
ProductPrice DECIMAL(10,2),
ProductRating INT DEFAULT 0,
CategoryID INT,
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
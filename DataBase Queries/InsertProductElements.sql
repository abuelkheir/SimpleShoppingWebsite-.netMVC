-- Inserting products for the 'Laptops' category
INSERT INTO Products (ProductName, ProductDescription, ProductPrice, CategoryID)
VALUES 
    ('Dell XPS 13', '13.3-inch Laptop with Intel Core i7, 16GB RAM, 512GB SSD', 1399.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop')),
    ('Apple MacBook Pro', '16-inch Laptop with Apple M1 Pro Chip, 16GB RAM, 512GB SSD', 2399.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop')),
    ('HP Spectre x360', '13.3-inch Convertible Laptop with Intel Core i7, 16GB RAM, 1TB SSD', 1299.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop')),
    ('Microsoft Surface Laptop 4', '13.5-inch Touchscreen Laptop with Intel Core i5, 8GB RAM, 256GB SSD', 999.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop')),
    ('Lenovo ThinkPad X1 Carbon', '14-inch Business Laptop with Intel Core i7, 16GB RAM, 512GB SSD', 1499.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop')),
    ('ASUS ROG Zephyrus G14', '14-inch Gaming Laptop with AMD Ryzen 9, 16GB RAM, 1TB SSD', 1399.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Laptop'));

-- Inserting products for the 'Mobiles & Tablets' category
INSERT INTO Products (ProductName, ProductDescription, ProductPrice, CategoryID)
VALUES 
    ('iPhone 13 Pro', '6.1-inch Smartphone with A15 Bionic Chip, 128GB Storage', 999.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet')),
    ('Samsung Galaxy S21 Ultra', '6.8-inch Smartphone with Exynos 2100, 12GB RAM, 256GB Storage', 1199.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet')),
    ('iPad Pro 12.9-inch', '12.9-inch Tablet with M1 Chip, 256GB Storage, Wi-Fi', 1099.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet')),
    ('Google Pixel 6', '6.4-inch Smartphone with Google Tensor Chip, 128GB Storage', 799.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet')),
    ('Samsung Galaxy Tab S7+', '12.4-inch Tablet with Snapdragon 865+, 256GB Storage, Wi-Fi', 849.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet')),
    ('OnePlus 9 Pro', '6.7-inch Smartphone with Snapdragon 888, 12GB RAM, 256GB Storage', 1069.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'Mobile & Tablet'));

-- Inserting products for the 'TV' category
INSERT INTO Products (ProductName, ProductDescription, ProductPrice, CategoryID)
VALUES 
    ('LG OLED C1 Series', '55-inch OLED TV with 4K Resolution, Dolby Vision IQ, webOS', 1499.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV')),
    ('Sony Bravia XR A80J', '65-inch OLED TV with 4K Resolution, XR Cognitive Processor, Google TV', 2299.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV')),
    ('Samsung QN90A Neo QLED', '65-inch QLED TV with 4K Resolution, Quantum HDR 32X, Tizen OS', 1999.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV')),
    ('TCL 6-Series', '55-inch QLED TV with 4K Resolution, Mini-LED, Roku TV', 799.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV')),
    ('Vizio M-Series Quantum', '65-inch QLED TV with 4K Resolution, Quantum Color, SmartCast', 899.00, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV')),
    ('Hisense U8G Series', '55-inch ULED TV with 4K Resolution, Dolby Vision HDR, Android TV', 899.99, (SELECT CategoryID FROM Categories WHERE CategoryName = 'TV'));

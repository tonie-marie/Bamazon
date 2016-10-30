CREATE DATABASE Bamazon;

USE Bamazon_DB;

CREATE TABLE Products (
    ItemID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    DepartmentName VARCHAR(100) NOT NULL,
    Price INT NOT NULL,
    StockQuantity INT NOT NULL
);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Face Mask Set", "Skin Care - Face Masks - Sheet Masks", 25, 10000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Hair Rescue Masks On The Go", "Hair Care - Hair Styleing & Treatments - Hair Masks", 25, 10000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("#SquadGoals Skincare Essentials Kit", "Skin Care - Treatments", 90, 10000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Beloved Laser-Cut Patent Red Sole Pump, White", "Shoes - Pumps", 1045, 5000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Monili-Panel Embroidered Sneaker, Bordeaux/Cream", "Shoes - Sneakers", 1345, 5000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Charisma Silk-Blend Robe, Black", "Women's Apparel - Lounge & Sleepwear", 610, 8000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Pearl-Studded Cat-Eye Sunglasses, Black", "Accessories - Sunglasses", 1995, 8000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Slouchy Basketweave Wool Beanie", "Accessories - Cold Weather Shop", 70, 10000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Harlow Cuddle Dog Bed", "Home - Decor - Pet Accessories", 1499, 10000);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Leather Pilot Jacket w/ Cashmere Trim, Dark Brown", "The Man's Store - Apparel - Coats & Jackets", 6295, 7000);
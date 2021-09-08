
CREATE DATABASE LStore; USE
    LStore;
CREATE TABLE `accounts` (
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
   `Photo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `roles` (
  `Id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `authorities` (
`Id` int NOT NULL AUTO_INCREMENT,
`Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`RoleId` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
PRIMARY KEY (`Id`),
UNIQUE KEY `UKhtk0tjw6uf67w0vkhy5n3j1oq` (`Username`,`RoleId`),
KEY `RoleId` (`RoleId`),
CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`),
CONSTRAINT `authorities_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `categories` (
  `Id` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `products` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Image` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Price` float NOT NULL,
  `Available` bit(1) NOT NULL,
  `CategoryId` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdate` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `orders` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Createdate` datetime NOT NULL,
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Username` (`Username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


CREATE TABLE `orderdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderid` bigint DEFAULT NULL,
  `productid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj4gc2ja2otvwemf4rho2lp3s8` (`orderid`),
  KEY `FKaltatpxipsjtcih4d1h6bn0xr` (`productid`),
  CONSTRAINT `FKaltatpxipsjtcih4d1h6bn0xr` FOREIGN KEY (`productid`) REFERENCES `products` (`Id`),
  CONSTRAINT `FKj4gc2ja2otvwemf4rho2lp3s8` FOREIGN KEY (`orderid`) REFERENCES `orders` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES('ALFKI', 'alfki', 'Maria Anders', 'alfki@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES ('ANATR', 'anatr', 'Ana Trujillo', 'anatr@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES  ('ANTON', 'anton', 'Antonio Moreno', 'anton@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES  ('AROUT', 'arout', 'Thomas Hardy', 'arout@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES ('BERGS', 'bergs', 'Christina Berglund', 'bergs@gmail.com', 'user.png');

INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES('cust', '123', 'Maria Anders', 'alfki@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES ('admin', '123', 'Ana Trujillo', 'anatr@gmail.com', 'user.png');
INSERT INTO `accounts`(`Username`, `Password`, `Fullname`, `Email`, `Photo`) VALUES  ('pm', '123', 'Antonio Moreno', 'anton@gmail.com', 'user.png');

INSERT INTO `roles`(`Id`, `NAME`) VALUES ('CUST', 'Customers');
INSERT INTO `roles`(`Id`, `NAME`) VALUES ('DIRE', 'Directors');
INSERT INTO `roles`(`Id`, `NAME`) VALUES ('STAF', 'Staffs');

INSERT INTO `authorities`(`Id`, `Username`, `RoleId`) VALUES (5, 'cust', 'CUST');
INSERT INTO `authorities`(`Id`, `Username`, `RoleId`) VALUES (6, 'pm', 'DIRE');
INSERT INTO `authorities`(`Id`, `Username`, `RoleId`) VALUES (7, 'admin', 'STAF');

INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1000', 'Dong ho deo tay');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1001', 'May tinh xach tay');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1002', 'May anh');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1003', 'Dien thoai');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1004', 'Nuoc hoa');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1005', 'Nu trang');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1006', 'Non thoi trang');
INSERT INTO `categories`(`Id`, `NAME`) VALUES ('1007', 'Tui xach xach tay');

INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1001, 'Aniseed Syrup', '1001.jpg', 190, '2021-09-04', 0, '1000');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES (1002, 'Change', '1002.jpg', 19,'2021-09-04', 0, '1000');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1003, 'Aniseed Syrup', '1003.jpg', 10,'2021-09-04', 1, '1001');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1004, 'Chef Anton''s Cajun Seasoning', '1004.jpg', 22, '2021-09-04', 0, '1001');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES (1005, 'Chef Anton''s Gumbo Mix', '1005.jpg', 21.35, '2021-09-04', 1, '1002');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1006, 'Grandma''s Boysenberry Spread', '1006.jpg', 25, '2021-09-04', 0, '1001');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1007, 'Uncle Bob''s Organic Dried Pears', '1007.jpg', 30, '2021-09-04', 0, '1006');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1008, 'Northwoods Cranberry Sauce', '1008.jpg', 40,'2021-09-04', 0, '1001');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1009, 'Mishi Kobe Niku', '1009.jpg', 97, '2021-09-04', 0, '1005');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1010, 'Ikura', '1010.jpg', 31, '2021-09-04', 0, '1007');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1011, 'Queso Cabrales', '1011.jpg', 21, '2021-09-04', 0, '1003');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1012, 'Queso Manchego La Pastora', '1012.jpg', 38, '2021-09-04', 1, '1003');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1013, 'Konbu', '1013.jpg', 6,'2021-09-04', 0, '1007');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES (1014, 'Tofu', '1014.jpg', 23.25, '2021-09-04', 1, '1006');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1015, 'Genen Shouyu', '1015.jpg', 15.5, '2021-09-04', 0, '1001');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1016, 'Pavlova', '1016.jpg', 17.45, '2021-09-04', 0, '1002');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1017, 'Alice Mutton', '1017.jpg', 39,'2021-09-04', 1, '1005');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1018, 'Carnarvon Tigers', '1018.jpg', 62.5,'2021-09-04', 1, '1007');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1019, 'Teatime Chocolate Biscuits', '1019.jpg', 9.2, '2021-09-04', 0, '1002');
INSERT INTO `products`(`Id`, `NAME`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES  (1020, 'Sir Rodney''s Marmalade', '1020.jpg', 81,'2021-09-04', 0, '1002');


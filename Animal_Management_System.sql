CREATE DATABASE Animal_Management_System
GO
USE Animal_Management_System

CREATE TABLE Type(
    id int IDENTITY(1,1)  NOT NULL PRIMARY KEY,
    name NVARCHAR(50) NOT NULL
)

CREATE TABLE Area(
    area_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    square FLOAT
)

CREATE TABLE Employee(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    username NVARCHAR(30) NOT NULL UNIQUE,
    password NVARCHAR(12) NOT NULL,
    name NVARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    age int,
    area_id int FOREIGN KEY REFERENCES Area(area_id)
)


CREATE TABLE Animal(
    id int IDENTITY(1,1) NOT NULl PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    weight Float,
    age Int,
    imported_DateTime DATETIME, 
    type_id int FOREIGN KEY REFERENCES Type(id),
    area_id int FOREIGN KEY REFERENCES Area(area_id)
)

CREATE TABLE Food(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    expired_Date DATETIME
)

CREATE TABLE food_animal(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    food_id int FOREIGN KEY REFERENCES Food(id),
    animal_id int FOREIGN KEY REFERENCES Animal(id)
)


USE [Animal_Management_System]
GO
SET IDENTITY_INSERT [dbo].[Type] ON

INSERT [dbo].[Type] ([id], [name]) VALUES (1, N'Dong Vat 4 Chan')
INSERT [dbo].[Type] ([id], [name]) VALUES (2, N'Chim')
INSERT [dbo].[Type] ([id], [name]) VALUES (3, N'Bò Sát')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Area] ON

INSERT [dbo].[Area] ([area_id], [name], [square]) VALUES (1, N'Mùa Xuân', 80)
INSERT [dbo].[Area] ([area_id], [name], [square]) VALUES (2, N'Mùa Đông', 90)
INSERT [dbo].[Area] ([area_id], [name], [square]) VALUES (3, N'Mùa Hạ', 100)
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[Animal] ON

INSERT [dbo].[Animal] ([id], [name], [weight], [age], [imported_DateTime], [type_id], [area_id]) VALUES (1, N'Sư tử', 100, 5, CAST(N'2015-10-20T11:40:41.000' AS DateTime), 1, 1)
INSERT [dbo].[Animal] ([id], [name], [weight], [age], [imported_DateTime], [type_id], [area_id]) VALUES (2, N'Lạc Đà', 90, 2, CAST(N'2019-05-11T14:39:35.000' AS DateTime), 1, 2)
INSERT [dbo].[Animal] ([id], [name], [weight], [age], [imported_DateTime], [type_id], [area_id]) VALUES (3, N'Hà Mã', 80, 2, CAST(N'2019-12-03T14:40:21.000' AS DateTime), 1, 3)
SET IDENTITY_INSERT [dbo].[Animal] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON

INSERT [dbo].[Employee] ([id], [username], [password], [name], [phone], [age], [area_id]) VALUES (2, N'xuandat', N'123456', N'dang xuan dat', N'0975489255', 18, 1)
INSERT [dbo].[Employee] ([id], [username], [password], [name], [phone], [age], [area_id]) VALUES (4, N'LoanChau', N'12345', N'Hoàng Các Loan Châu', NULL, 20, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON

INSERT [dbo].[Food] ([id], [name], [expired_Date]) VALUES (1, N'Thịt Heo', CAST(N'2010-10-20T11:39:35.000' AS DateTime))
INSERT [dbo].[Food] ([id], [name], [expired_Date]) VALUES (2, N'Cá', CAST(N'2021-10-28T14:37:13.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[food_animal] ON

INSERT [dbo].[food_animal] ([id], [food_id], [animal_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[food_animal] OFF
GO
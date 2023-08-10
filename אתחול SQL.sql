/*


use master

create database socialgarage_
go

use socialgarage_
go


drop database socialgarage_
go



*/


ALTER DATABASE socialgarage_
COLLATE Hebrew_CI_AS;
GO


CREATE TABLE users (
    _id INT PRIMARY KEY IDENTITY, -- IDENTITY property for auto-incrementing ID
    email VARCHAR(255),
    name NVARCHAR(255),
    password VARCHAR(MAX)
);

CREATE TABLE cars (
    manufacturer NVARCHAR(255),
    model VARCHAR(255),
    image VARCHAR(MAX),
    carNumber VARCHAR(10) PRIMARY KEY,
	year INT,
	hand VARCHAR(255),
    currentMileage FLOAT,
	testValidity VARCHAR(255),
    nickname NVARCHAR(255),
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES users(_id)
);

CREATE TABLE Tahzuka (
    TahzukaId INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255),
    date VARCHAR(255),
    image NVARCHAR(MAX),
    carNumber VARCHAR(10),
    FOREIGN KEY (CarNumber) REFERENCES cars(carNumber)
);




DROP TABLE Tahzuka;
DROP TABLE cars;
DROP TABLE users;

DROP DATABASE IF EXISTS playstoredb ;

create DATABASE PlayStoreDB;
use PlayStoreDB;

create TABLE Developers(
DeveloperID INT Primary Key,
DeveloperName VARCHAR(60) Not Null,
Country VARCHAR(30),
FoundedYear INT 
);

insert into Developers values
(101,'Google LLC','USA',1998),
(102,'Meta Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'Canva Pty Ltd','Australia',2012),
(105,'BYJU''S','India',2011) ;

create TABLE publishers(
PublisherID INT  Primary Key,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(60)
);

insert into Publishers values
(201,'Google Play','California','support@google.com'),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
(202,'Samsung Galaxy Store','Seoul','support@samsung.com'),
(203,'Huawei AppGallery','Shenzhen','support@huawei.com'),
(204,'Amazon Appstore','Seattle','support@amazon.com');

create TABLE Categories(
CategoryID INT Primary Key,
CategoryName VARCHAR(40),
MinimumAge INT);

insert into Categories values
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);

create TABLE Apps(
AppID INT Primary Key,
AppName VARCHAR(60),
DeveloperID INT ,
PublisherID INT ,
CategoryID INT ,
Rating DECIMAL(2,1),
Downloads BIGINT,
Price DECIMAL(6,2)
);

insert into Apps values
(1001,'Google Classroom',101,201,301,4.6,500000000,0.00),
(1002,'Google Keep',101,201,302,4.5,1000000000,0.00),
(1003,'Instagram',102,201,304,4.4,5000000000,0.00),
(1004,'Spotify',103,201,303,4.5,1000000000,0.00),
(1005,'Canva',104,201,302,4.7,500000000,0.00),
(1006,'BYJU''S Learning',105,201,301,4.3,100000000,299.00),
(1007,'Candy Crush',102,204,305,4.6,1000000000,0.00),
(1008,'Temple Run',104,203,305,4.2,500000000,0.00);


DESC Apps ;

INSERT INTO Developers values
(106,'OpenAI','USA',2015) ;

INSERT INTO Categories values
(306,'Artificial Intelligence',12);

INSERT INTO Apps values
(1009,'ChatGPT',106,201,306,4.9,10000000,0.00);

UPDATE Apps
set Rating=4.5
WHERE AppID=1008;

DELETE FROM Developers
WHERE DeveloperID=105 ;

UPDATE Publishers
set SupportEmail='samsunggalaxy@gmail.com'
WHERE PublisherID= 202;

INSERT INTO Apps values
(1010,'Whatsapp',107,204,305,5,50000000,0.00),
(1011,'freefire',108,205,306,7,10000000,0.00) ;

UPDATE Apps
set Price=199
WHERE AppID=1006 ;

DELETE FROM Categories
WHERE CategoryID=303 ;

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;


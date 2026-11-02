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
SELECT UPPER(DeveloperName) FROM Developers ;
SELECT LOWER(DeveloperName) FROM Developers ;
SELECT LENGTH(AppName) FROM Apps ;
SELECT CategoryName,LENGTH(CategoryName) FROM Categories ;

SELECT current_date() ;
SELECT current_time() ;

SELECT ROUND(Ratings,0) FROM Apps ;

SELECT substring(AppName,1,5) FROM Apps ;

SELECT CONCAT(DeveloperName,' ',Country) FROM Developers ;

SELECT AppName,Rating ,ROUND(Rating ,0) FROM Apps ;

SELECT AppName,Price,CEIL(Price) FROM Apps ;

SELECT DeveloperName,FoundedYear FROM Developers ;

SELECT CAST(Downloads AS CHAR) AS Downloads_Str FROM Apps;

SELECT UPPER(AppName),Rating FROM Apps ;

SELECT SUBSTRING(CategoryName,1,3) FROM Categories ;

SELECT ABS(200-Price) FROM Apps ;

SELECT DeveloperName,LENGTH(DeveloperName) FROM Developers ;

SELECT CURRENT_TIMESTAMP() ;
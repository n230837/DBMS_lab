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

select * from Developers;
select * from Publishers ;
select * from Categories ;
select * from Apps ;


ALTER TABLE Apps
ADD CONSTRAINT fk_developerid
FOREIGN KEY (DeveloperID)
REFERENCES Developers(DeveloperID) ;

ALTER TABLE Apps
ADD CONSTRAINT fk_publisherid
FOREIGN KEY (PublisherID)
REFERENCES Publishers(PublisherID);

ALTER TABLE Apps
ADD CONSTRAINT fk_categoryid
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID) ;

SELECT * FROM Apps
WHERE Rating>4.5 ;

SELECT * FROM Apps
WHERE CategoryID=305 ;

SELECT * FROM Apps
WHERE Downloads>500000000;

SELECT * FROM Apps
WHERE Rating BETWEEN 4.3 AND 4.7 ;

SELECT * FROM Apps 
WHERE Price IN (0,299) ;

SELECT * FROM Apps
WHERE AppName LIKE "G%";

SELECT * FROM Apps
WHERE AppName LIKE "%Google%";

SELECT * FROM Apps
WHERE Rating>4.0 AND Downloads>500000000;

SELECT * FROM Apps
WHERE CategoryID=301 OR CategoryID=305 ;

SELECT * FROM Apps
WHERE AppName NOT LIKE "G%" ;

SELECT * FROM Apps
WHERE Rating<4.5 OR Downloads>1000000000 ;

SELECT * FROM Developers
WHERE DeveloperName LIKE "%a%" ;

SELECT * FROM Apps
WHERE Price BETWEEN 0 AND 300 ;

SELECT * FROM Apps
WHERE PublisherID IN (201,204) ;

INSERT INTO Apps VALUES
(1009,'Whatsapp',106,202,302,4.9,500000000,250) ;


SELECT * FROM Apps
WHERE NOT CategoryID=305 ;

create database ExerciseDb

use ExerciseDb

create table Companyinfo

(CId int primary key,
CName nvarchar (50) not null)
insert into Companyinfo values(1,'Samsung')
insert into Companyinfo values(2,'Hp')
insert into Companyinfo values(3,'Apple')
insert into Companyinfo values(4,'Dell')
insert into Companyinfo values(5,'Toshibi')
insert into Companyinfo values(6,'redmi')
select * from Companyinfo

create table Productinfo
(PId int primary key identity(100,1),
PName nvarchar(50) not null,
PPrice float,
CId int foreign key references Companyinfo(CId),
PMDate date
)
insert into Productinfo(CId,PName,PPrice,PMDate) values (1,'Laptop',55000.90,'12/12/2023')
insert into Productinfo(CId,PName,PPrice,PMDate) values (2,'Laptop',35000.90,'12/12/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (2,'Mobile',15000.90,'12/03/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (3,'Laptop',135000.90,'12/12/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (3,'Mobile',65000.90,'12/12/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (5,'Laptop',35000.90,'12/12/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (5,'Mobile',35000.90,'12/01/2012')
insert into Productinfo(CId,PName,PPrice,PMDate) values (3,'Earpod',1000.90,'12/1/2022')
insert into Productinfo(CId,PName,PPrice,PMDate) values (6,'Laptop',85000.90,'12/12/2021')
insert into Productinfo(CId,PName,PPrice,PMDate) values (1,'Mobile',55000.700,'12/12/2020')
select * from Productinfo


select* from Companyinfo
-------q1--show all company details----
select* from Companyinfo ,Productinfo where Companyinfo.CId=Productinfo.PId
select * from Companyinfo c,Productinfo p where c.CId=p.CId
-------q2---show all products name and recpective companies--------
select p.PName,c.CName from Productinfo p join Companyinfo C ON p.CId=c.CId

-------q3----show all possible combinations of company and products-------
select c.CName,p.PName from Companyinfo C CROSS join Productinfo p;
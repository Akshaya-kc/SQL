use  country_detailes;
create table countries(id int primary key,country_name varchar(20),population int,area decimal(10,2));
create table persons(id int,Fname varchar(20),Lname varchar(20),Population int,rating decimal(2,1),country_id int,country_name varchar(20),foreign key (country_id) references countries(id));
insert into countries values (1,'india',14200000,3287263),(2,'china',141000000,9596961),(3,'usa',3310000,9525076),(4,'brazil',2567865,856786),
(5,'japan',12800000,1964375),(6,'pakistan',240000,881913),(7,'indonesia',6785678,1345677),(8,'uk',3458766,567856),(9,'canada',345678,98768),(10,'australia',78654,78689);
select *from countries;
desc persons;
INSERT INTO persons values  (1, 'john', 'mac', 45000, 4.5, 1, 'india'),
(2, 'mike', 'tyson', 34557, 4.8, 7, 'indonesia'),
(3, 'MIKLE', 'TEDY', 3599, 4.8, 3, 'USA'),
(4, 'AMAN', 'RAJ', 2345, 3.8, 6, 'PAKISTAN'),
(5, 'SHIN', 'JAN', 6789, 3.9, 5, 'JAPAN'),
(6, 'NIKI', 'UMAR', 4598, 3.2, 2, 'CHINA'),
(7, 'TERESA', 'MARY', 2345, 3.0, 10, 'AUSTRALIA'),
(8, 'CAROLIN', 'JACK', 1235, 4.6, 3, 'USA'),
(9, 'MANOHAR', 'JAGAN', 8756, 4.2, 1, 'INDIA'),
(10, 'JIJI', 'KARKAR', 8349, 3.1, 2, null),
(11, 'JIJI', 'hjj', 80349, 3.1, 9, ' '); 
select * from persons;
select left(country_name ,3) as first_3letters from countries;
select concat(fname," ",lname) as fullname from persons;
select count(distinct country_name) from persons;
select max(population) from countries as maxpopulation;
select min(population) from persons as minimumpopulation;
insert into persons values(12,'katha',null,45678,4.2,5,'japan'),(13,'hira',null,56777,3.6,10,'australia');
select count(lname) from persons;
select count(*) from persons;
select  population from countries limit 3;
select * from countries order by rand()  limit 3;
select * from persons order by rating desc;
select Country_name, sum(Population) as total_population from Persons group by Country_name;
select country_name , sum(population) as total_population  from persons group by country_name having total_population>50000;
select  country_name,count(*) as total_persons, avg(rating)  as avg_rating from persons group by country_name having count(*)>1
order by avg_rating asc;












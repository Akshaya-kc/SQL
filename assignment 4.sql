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
    (5, 'SHIN', 'JAN', 6789, 3.9, 5, 'JAPAN');
    INSERT INTO persons values (6, 'NIKI', 'UMAR', 4598, 3.2, 2, 'CHINA');
    INSERT INTO persons values (7, 'TERESA', 'MARY', 2345, 3.0, 10, 'AUSTRALIA');
   INSERT INTO persons values  (8, 'CAROLIN', 'JACK', 1235, 4.6, 3, 'USA');
   INSERT INTO persons values  (9, 'MANOHAR', 'JAGAN', 8756, 4.2, 1, 'INDIA');
    INSERT INTO persons values (10, 'JIJI', 'KARKAR', 8349, 3.1, 2, null); 
    select * from persons;
    select distinct country_name from persons;
    select fname as firstname ,lname as lastname from persons;
    select fname,lname from persons where rating>4.0;
    select country_name from countries where population>1000000;
    select fname,lname from persons where country_name='usa' or rating>4.5;
select fname,lname from persons where country_name is null;
select * from persons where country_name in ('usa','india');
select *from persons where country_name not in('india','pakistan');
select *from countries where population between 2000000 and 6000000;
select * from countries where country_name not like 'c%';

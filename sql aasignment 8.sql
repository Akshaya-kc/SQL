use country_detailes;
select * from countries;
select * from persons;
select  country_name ,count(*) as no_of_persons from persons group by country_name;
select  country_name ,count(*) as no_of_persons from persons group by country_name order by no_of_persons desc;
select country_name, avg(rating) as avg_rating from persons group by  country_name having avg_rating>3;
select distinct country_name from persons where rating=(select rating from persons where country_name='indonesia');
select avg (population) from countries ;
select country_name,population  from countries where population>( select avg(population) from countries );

# view based questions
create database product;
use product;
create table customer (customer_id int primary key auto_increment,first_name varchar(20),last_name varchar(20),
email varchar(40),phone_no varchar(20),address varchar(40),city varchar(40),state varchar(30),zip_code varchar(20) ,country varchar(30));
insert into customer(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NO,ADDRESS,CITY,STATE,ZIP_CODE,COUNTRY)
 values('jaya','ram' ,'asa@gmail.com','9987654321','no7_street_spkoil_madras','CHENNAI','TN','TR567','INDIA');
 insert into customer(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NO,ADDRESS,CITY,STATE,ZIP_CODE,COUNTRY)
 values('JIYa','KHAN' ,'BHN@gmail.com','8987654301','no8_street_HOSUR','HOSUR','KARNATAKA','TF8567','INDIA'),
 ('MOHAN','RAJ' ,'RAJ23@gmail.com','7087654301','GOKULPALACE_MOVATTUPUZHA','MOOVATTUPUZHA','THRISSUR','KJL907','INDIA');
 insert into customer(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NO,ADDRESS,CITY,STATE,ZIP_CODE,COUNTRY)
 values('JOHN','KON' ,'KKN@gmail.com','8980954301','no8_street_CALIFORNIA','SAN_FRANCISCO','CALIFORNIA','POP8567','US'),
 ('RIK','DON' ,'DON23@gmail.com','7087690301','GPALACE_US_NO 20 STREET','LOS_ANGELES','CALIFORNIA','KLK907','US'),
 ('MANO','HARIN' ,'HAR@gmail.com','8956954301','HAR_HOUSE_LONDON','CAMDEN','LONDON','PLKP8509','UK');
 SELECT * FROM CUSTOMER;
 CREATE VIEW CUSTOMER_INFO AS SELECT CONCAT(FIRST_NAME,LAST_NAME)  AS FULL_NAME,EMAIL FROM CUSTOMER; 
 SELECT * FROM CUSTOMER_INFO;
 CREATE VIEW US_CUSTOMERS AS SELECT * FROM CUSTOMER WHERE COUNTRY='US';
 SELECT * FROM US_CUSTOMERS;
 CREATE VIEW CUSTOMER_DETAILES AS SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME,EMAIL,PHONE_NO, STATE FROM CUSTOMER;
 SELECT * FROM CUSTOMER_DETAILES;
 UPDATE CUSTOMER SET Phone_no = '8765456798' WHERE customer_id =5;
 SET SQL_SAFE_UPDATES = 0;
 UPDATE CUSTOMER_DETAILES SET Phone_no = '9995456798' WHERE STATE = 'LONDON';

 
 SELECT STATE,COUNT(*) AS NO_OF_CUSTOMERS FROM CUSTOMER group by STATE  HAVING NO_OF_CUSTOMERS >1;
 SELECT STATE,COUNT(*) AS NO_OF_CUSTOMERS FROM CUSTOMER_DETAILES group by STATE;
 SELECT * FROM CUSTOMER_DETAILES ORDER BY STATE ASC;
 



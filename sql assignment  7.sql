use country_detailes;
alter table persons add column DOB date;
desc persons;
delimiter @
create function age(DOB date)
returns int
deterministic
begin
return timestampdiff(YEAR,DOB,curdate());
end @
DELIMITER ;
SHOW KEYS FROM countries WHERE Key_name = 'PRIMARY';
ALTER TABLE Persons ADD PRIMARY KEY (Id);
update  persons set DOB='1987-07-25' WHERE id=1;
update  persons set DOB='1988-06-22' WHERE id=2;
update  persons set DOB='1990-06-09' WHERE id=3;
update  persons set DOB='1992-08-02' WHERE id=4;
update  persons set DOB='1991-12-06' WHERE id=5;
update  persons set DOB='1993-06-22' WHERE id=6;
update  persons set DOB='1988-04-12' WHERE id=7;
update  persons set DOB='1999-06-02' WHERE id=8;
update  persons set DOB='1997-01-02' WHERE id=9;
update  persons set DOB='1998-05-12' WHERE id=10;
select *,age(dob) as age from persons;
select country_name,length(country_name) from countries;
select country_name,left(country_name,3) from countriies;
select country_name,upper(country_name)  as upper ,lower(country_name) as lower from countries;
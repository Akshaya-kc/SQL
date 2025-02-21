use country_deatiles;
select *from persons;
select * from countries;
select  countries.* ,persons.* from countries inner join persons on persons.country_id=countries.id;
select  countries.* ,persons.* from countries left join persons on persons.country_id=countries.id;
select  countries.* ,persons.* from countries right join persons on persons.country_id=countries.id;
select distinct country_name from countries union select distinct country_name from persons;
select  country_name from countries union all select  country_name from persons;
select * ,round(rating) from persons ;



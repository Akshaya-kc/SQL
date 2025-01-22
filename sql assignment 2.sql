# creating a database
create database sales;
use sales;
create table orders(
order_id int not null,
customer_Name varchar(20) primary key,
product_category varchar(20),
ordered_item varchar(20),
contact_no int unique
);
ALTER TABLE orders ADD order_quantity int;
RENAME TABLE orders TO sales_orderstable;
insert into sales_orderstable values(101,'ami','phone','oppo',234567,1),
(102,'kasi','laptop','hp',345677,1),(103,'ninthin','laptop','hp',567899,1),(192,'kasiv','charger','one plus',256788,1)
,(456,'dev','laptop','hp',345077,1),(192,'yasi','tv','dell',345607,1),(902,'pravi','laptop','hp',390877,1),
(89,'nathin','pen','lexi',390897,30),(652,'neena','mixer','sujatha',102365,1),(985,'manu','bike','bajaj',859642,1);
SELECT * FROM sales_orderstable;
select customer_name,ordered_item from sales_orderstable;
update sales_orderstable set product_category='mixer_grinder' where customer_name='neena';
drop table sales_orderstable;


show databases;
use astrax;

select * from cars where year > 2000;
select * from cars where year < 2015;
select * from cars where year in (2008, 2009, 2010);
select * from cars where year not in (2008, 2009, 2010);
select * from cars where year and price = 2000;

select * from cars where model = 'bmw' and year > 2014;
select * from cars where model = 'audi' and year < 2014;
select * from cars limit 5;
select * from cars order by id desc limit 10;

select model, avg(price) from cars where model = 'kia';
select model, avg(price) from cars group by model;
select model, count(*) from cars group by model;
select model, count(*) as car_count from cars group by model order by car_count desc limit 1;

select * from cars where SUBSTRING(model, 2, 1) = 'a' and substring(model, LENGTH(model) - 1, 1) = 'a';
select * from cars where length(model) > 8;

select * from cars where price > (select avg(price) from cars);

-- create table cars(
--                        #     id int primary key auto_increment,
--                        #     model varchar(20) not null,
--                        #     price int not null,
--                        #     year int not null);
-- insert into cars(model, price, year) values ('Cadillac', 85000, 2019);

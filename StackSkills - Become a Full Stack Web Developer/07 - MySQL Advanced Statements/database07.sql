-- UPDATE
update names 
set firstName = 'Nora'
where id = '5';

select * from names;

-- Mathematical Operations
create table numbers(
	num1 int,
	num2 int
);

insert into numbers (num1) values (1), (2), (3);

select * from numbers;

-- no workbench para não dar erro deve-se usar o limit ou retirar a proteção
update numbers set num2 = num1 * num1 limit 3; 

select num1, num1 * num1 as square from numbers;

drop table numbers;

show tables;

-- DISTINCT, COUNT and GROUP BY
select distinct(lastName) from names; 

select count(*) from names;

select count(distinct(lastName)) from names;

select lastName, count(lastName) from names group by lastName;

-- Table Relationships

-- Introdution to Joins
select * from names;

select * from addresses;

select firstName, lastName, addr1 
from names join addresses on names.id = addresses.nameID;

select * 
from names join addresses on names.id = addresses.nameID;



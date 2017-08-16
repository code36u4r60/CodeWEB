drop database if exists JoinDemo;

create database JoinDemo;

create table names(
	ID mediumint not null auto_increment primary key,
    name varchar(20)
);

create table colors(
	ID mediumint not null auto_increment primary key,
    nameID mediumint,
    color varchar(20)
);

insert into names (name)
	values ('John'),('Bill'),('Mary'),('Jane'),('Ted'),('Nora');

insert into colors (color)
	values ('red'),('blue'),('yellow'),('green'),('purple'),('orange');

select * from names;
select * from colors;

-- Atenção ao segurança do Workbench
update colors set nameID = 3 where color = 'red' limit 1;

update colors set nameID = 2 where color = 'blue' limit 1;

update colors set nameID = 5 where color = 'green' limit 1;

update colors set nameID = 1 where color = 'purple' limit 1;

select * from colors;

-- JOINS DEMO
select name, color 
from names 
join colors on names.ID = colors.nameID;

select name, color 
from names 
left join colors on names.ID = colors.nameID;

select name, color 
from names 
right join colors on names.ID = colors.nameID;

select name, color 
from names 
full join colors;


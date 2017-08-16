-- DELETE QUERY
create database Tables_in_deletedemo;

use Tables_in_deletedemo;

create table items(
	ID mediumint not null auto_increment primary key,
	name varchar(15)
);

show tables; 

insert into items (name)
values ('table'), ('chair'), ('lamp'), ('phone');

select * from items;

-- desbloquiar a proteção se não da erro
delete from items;

insert into items (name)
values ('table'), ('chair'), ('lamp'), ('phone');

-- desbloquiar a proteção se não da erro ou usar o limit
delete from items where name = 'lamp' limit 1;

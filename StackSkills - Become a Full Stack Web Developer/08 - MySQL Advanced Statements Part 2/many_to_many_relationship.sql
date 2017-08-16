/*
	create a database of names and items tables, 
    where each person may own many items and 
    each item may be owned by many people.
*/

drop database if exists ManyManyDemo;

create database ManyManyDemo;

use ManyManyDemo;

-- create the names table and insert data:
create table names(
	ID mediumint not null auto_increment primary key,
    name varchar(20)
);

insert into names(name)
	values ('John'), ('Mary'), ('Jane');
    
-- create the items table and insert data:
create table items(
	ID mediumint not null auto_increment primary key,
    name varchar(20)
);

insert into items (name)
	values ('homephone'), ('cellphone'), ('pet');
    
-- create the join table and insert data:
create table namesitems(
	nameID mediumint not null,
    itemID mediumint not null
);

insert into namesitems(nameID, itemID)
	values
    (1, 2), -- John has a cellphone
    (1, 3), -- John has a pet
    (2, 1), -- Mary has a homephone
    (2, 2), -- Mary has a cellphone
    (3, 2), -- Jane has a cellphone
    (3, 3); -- Jane has a pet

select * from names;
select * from items;
select * from namesitems;

SELECT names.name AS Name, items.name AS Item
FROM names JOIN namesitems JOIN items 
ON names.ID = namesitems.nameID AND items.ID = namesitems.itemID;

create view viewitems as
SELECT names.name AS Name, items.name AS Item
FROM names JOIN namesitems JOIN items 
ON names.ID = namesitems.nameID AND items.ID = namesitems.itemID;

select * from viewitems;








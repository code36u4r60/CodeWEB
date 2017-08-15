-- apaga caso exista
drop database if exists contacts;

-- Criar base de dados contacts
create database contacts;

-- Usar a base de dados contacts
use contacts;

-- Criar tabela names
CREATE TABLE `names` (
    `ID` MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstName` VARCHAR(20),
    `lastName` VARCHAR(20)
);

-- Criar tabela addresses
CREATE TABLE addresses (
    `ID` MEDIUMINT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nameID` MEDIUMINT(9) NOT NULL,
    `addr1` VARCHAR(30),
    `addr2` VARCHAR(30),
    `city` VARCHAR(30),
    `state` VARCHAR(10),
    `postal_code` VARCHAR(10)
); 

-- Criar chave estrangeira nameID
alter table addresses
add foreign key (nameID) 
references names(id);

desc names;
desc addresses;

-- inserir dados em names
insert into names (firstName, lastName)
values ('John','Doe'),
	('Mary','Smith'),
	('Bill','Jones'),
	('Dave','White'),
	('Jane','Tate');
    
-- inserir dados em addresses
insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '123 4th Street', '', 'Anytown', 'OH', '12345' from names where firstName='John' and lastName='Doe';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '16 7th Avenue', 'Apt. 9', 'Big City', 'AZ', '23456' from names where firstName='Mary' and lastName='Smith';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '5423 Rose Ct.', 'Number 3', 'Townburg', 'VT', '34567' from names where firstName='Bill' and lastName='Jones';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '456 7th Street', '', 'Hilltop', 'FL', '98756' from names where firstName='Dave' and lastName='White';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '98 Long Road', '', 'Noplaceville', 'AK', '764839' from names where firstName='Jane' and lastName='Tate';

-- SELECT's

select * from addresses;

select * from names;

select lastName from names;

select firstName, lastName from names;

select * from names where lastName = 'Doe';

select * from names where lastName like 'D%';

select * from names where lastName like '%e';

select * from names order by lastName;

select * from names limit 4;

select * from names order by lastName limit 4;

select * from names limit 4, 10;
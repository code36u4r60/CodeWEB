create view favoriteColors as 
select name, color from names left join colors on names.ID = colors.nameID;

show tables;

select * from favoriteColors;

drop view favoriteColors;

show tables;
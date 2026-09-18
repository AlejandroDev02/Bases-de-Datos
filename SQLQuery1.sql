if object_id('Productos')is not null
	drop table Productos


create table Productos(
	Id int identity primary key, /*persisten through temp memory, keeps count until table drop*/
	Nombre nvarchar(50),
	Seccion nvarchar(59)
);

select * from Productos

insert into Productos values
('Nevera','Electrodomesticos'),
('FAB','Limpieza'),
('Camisa','Ropa');

select * from Productos

delete from Productos where(Nombre='FAB');

select * from Productos

delete from Productos /*Empties the table but doesn't delete it*/

select * from Productos

insert into Productos values
('Nevera','Electrodomesticos'),
('FAB','Limpieza'),
('Camisa','Ropa');

select * from Productos

/*drop table Productos; /*gets rid of table*/*/

truncate table Productos /*unlike delete from table, empties any persisting data from the memory (i.e, Id counter reset)*/

select * from Productos

/*PLACEHOLDER*/
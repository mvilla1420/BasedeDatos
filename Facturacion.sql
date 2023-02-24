use master --aca nos devolvemos a la master

drop database facturacion -- aca vamos a borrar la db facturacion


create database facturacion  --se crea la base de datos
go --con go hacemos que corra todo

use facturacion  -- f5 y vamos a usar la db facturacion
go

create table clientes --se crea la tabla clientes
(
	vc_cedula	varchar(15), --se declara la variable cedula con una longuitud de 15 caracteres		
	nombre		varchar(30),--se declara la variable nombre con una longuitud de 30 caracteres
	apellidos	varchar(30) --se declara la variable apellidos con una longuitud de 15 caracteres
)
go

 --crear llave primaria
alter table clientes  alter column vc_cedula varchar(15) not null --aca alteramos la tabla clientes y usamos cedula como primary key
go

alter table clientes add primary key (vc_cedula) -- aca alteramos la tabla clientes y usamos cedula como primary key
go

alter table clientes drop column nombre -- aca se borra la columna nombre
go

alter table clientes add nombre varchar(30) -- aca se vuelve agregar la columna nombre
go

----se van insertar datos a la db
insert into clientes values('03-0300-0300','Juan','Perez') --aca vamo agregar los datos en el mismo orden que se declaron las variables
go

----se va hacer una consulta
select * from clientes -- aca se va mostrar los campos de cedula y apellidos porque el campo de nombre se borro


create table facturas -- se crea la tabla facturas
(
	nfactura	varchar(30) not null primary key, -- aca de declara numero de factura como primary key 
	fecha		date, -- se declara la variable fecha
	cedula		varchar(15) -- se declara cedula con longuitud de 15
)

select * from facturas

alter table facturas 
	add foreign key (cedula) references clientes(vc_cedula)  -- acamo vamos usar una variable foranea con cedula


/*************ingreso de datos********/
insert into clientes values('04-0400-0400','Maria','Solano') 

insert into clientes  (vc_cedula, nombre, apellidos) values ('05-0500-0500','Pedro ','Capmany ') -- aca es otra forma de solicitar los datos

insert  into facturas values ('A1253',getdate(),'03-0300-0300')  -- aca estamos ingresando valores en la tabla facturas

select *from clientes
select * from facturas

-----relacion------
--select a.*,c.*  --se un alias para factura y para clientes
--	from facturas a, clientes c  
--	where a.cedula = c.vc_cedula --aca se declara la relacion
--	order by vc_cedula,nfactura

	select a.nfactura,a.fecha,a.cedula,  --vamos a maquillar el error del orden de los titulos
		   c.vc_cedula,c.apellidos as nombre,c.nombre as apellidos
	from facturas a, clientes c  
	where a.cedula = c.vc_cedula 
	order by vc_cedula,nfactura

Delete from clientes where vc_cedula =' 04-0400-0400' -- aca vamos a borrar un dato en cedula
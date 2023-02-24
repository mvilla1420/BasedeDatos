--drop database Ejercicio1 

--create database Ejercicio1
--go

--use Ejercicio1
--go

/*************Primer Tabla********/
--create table Paciente
--(
--	Cedula varchar(15) not null primary key,
--	Nombre varchar(15),
--	Apellido varchar(30),
--	Direccion varchar(30),
--	Telefono varchar(30),
--	FechaRegistro Date
--)
--go

--select * from Paciente
--go


/*************Segun Tabla********/
--create table Citas
--(
--	CedulaPaciente varchar(15) not null primary key,
--	FechaCita Date,
--	HoraInicio Time,
--	HoraSalida Time,
--	Especialidad varchar(30),
--	MedicoID varchar(15)
--)
--go

--select * from Citas
--go

/*************ingreso de datos********/

--insert into Paciente values(' 01-1000-1000','Mario ','Villarreal','Alajuelita','8888-8888','02/23/2023')
--insert into Paciente values(' 02-2000-2000','Jassica ','Carvajal','Palmares','777-7777','02/22/2023')
--select * from Paciente

--insert into Citas values('01-1000-1000','02/23/2023','12:00:00','13:00:00','Medicina','001')
--insert into Citas values('02-2000-2000','02/22/2023','10:00:00','11:00:00','Dentista','002')
--select * from Citas

/*******relacion******/
select a.*,c.*  --se un alias para factura y para clientes
       from Paciente a, Citas c 
    where a.Cedula = c.CedulaPaciente --aca se declara la relacion
    order by Cedula

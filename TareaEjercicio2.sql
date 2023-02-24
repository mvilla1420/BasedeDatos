drop database Ejercicio2

--create database Ejercicio2
--go

--use Ejercicio2
--go

--create table Estudiante
--(
--	CarnetEstudiante varchar(15) not null primary key,
--	Nombre varchar(15),
--	Apellido varchar(30),
--	Direccion varchar(30),
--	Telefono varchar(30)
--)
--go


--create table Matricula
--(
--	CarnetEstudiante varchar(15) not null primary key,
--	FechaInicio Date,
--	FechaFin Date,
--	CodigoCurso varchar(15),
--	ProfesorID varchar(30)
--)
--go


--create table Finanzas
--(
--	CodigoCurso varchar(15) not null primary key,
--	NombreCurso varchar(15),
--	Costo varchar(30),
--	Sede varchar(30),
--	NombreProfesor varchar(30),
--	Horario varchar(30)
--)
--go

--create table CalidadTotal
--(
--	CodigoCurso varchar(15) not null primary key,
--	NombreCurso varchar(15),
--	Costo varchar(30),
--	Sede varchar(30),
--	NombreProfesor varchar(30),
--	Horario varchar(30)
--)
--go

--create table ControldeInventario
--(
--	CodigoCurso varchar(15) not null primary key,
--	NombreCurso varchar(15),
--	Costo varchar(30),
--	Sede varchar(30),
--	NombreProfesor varchar(30),
--	Horario varchar(30)
--)
--go

--Select * from Estudiante
--Select * from Matricula
--Select * from Finanzas
--Select * from CalidadTotal
--Select * from ControldeInventario

/*************ingreso de datos********/

--insert into Estudiante values('20201515','Villarreal','Mario','Alajuelita','8888-8888')
--select * from Estudiante

--insert into Matricula values('20201515','02/23/2023','04/30/2023','A001','P001')
--select * from Matricula

--insert into Finanzas values('A001','Finanzas','100','San Pedro','Rogelio Mora','Martes PM')
--select * from Finanzas

--insert into CalidadTotal values('A002','Calidad Total','100','Heredia','Martin Angulo','Lunes AM')
--select * from CalidadTotal

--insert into ControldeInventario values('A003','Control de Inventario','100','Cartago','Maria Marta','Sabado AM')
--select * from ControldeInventario




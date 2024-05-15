CREATE DATABASE bd_internet;

create table usuarios(
	 id int auto_increment primary key,
	 nombres varchar(50),
	 apellidos varchar(50),
	 seminario varchar(50),
	 confirmado tinyINT not null check (confirmado in (0,1)),
	 fecha date
	
);
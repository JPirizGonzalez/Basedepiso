--crear base de datos y usarla

create DATABASE piso;
use piso;

--crear tablas para la base de datos 

CREATE TABLE Usuario(
ID_usuario tinyint PRIMARY KEY AUTO_INCREMENT ,
Nombre varchar (60) not null
);

CREATE table Tareas(
ID_tarea tinyint PRIMARY KEY AUTO_INCREMENT ,
Tarea varchar (60) not null
);

CREATE table Lista_compra(
producto varchar (80) not null primary KEY,
cantidad tinyint not null 
);

create table reparto(
ID_tarea tinyint,
ID_usuario tinyint,
Fecha date,
CONSTRAINT FK_TAR_ID
FOREIGN KEY (ID_tarea) REFERENCES Tareas (ID_tarea),
CONSTRAINT FK_usu_ID
FOREIGN KEY (ID_usuario) REFERENCES Usuario (ID_usuario),
PRIMARY KEY (Fecha, ID_usuario),
UNIQUE (Fecha, ID_tarea);
);

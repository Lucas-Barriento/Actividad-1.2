/* Relacion 1a1
se generan las tablas pais y presidente. Un pais solo puede tener un presidente y un presidente solo puede gobernar en un pais.
*/


create database unoauno
go
use unoauno
create table Pais(
    ID bigint not null PRIMARY KEY IDENTITY(1,1),
    Nombre varchar(30) not null,
    Continente varchar(10) not null check(Continente ='america' or Continente ='europa' or Continente ='asia' or Continente ='africa' or Continente ='oceania'),
    Presidente varchar(25) not null, 

)

create table Capital(
IDPais bigint NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Pais(ID),
Nombre varchar(30) not null UNIQUE,
Poblacion INT not null,
Gobernador varchar(25) not null,
)
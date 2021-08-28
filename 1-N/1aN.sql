/* Relacion uno a muchos
se generan las tablas ConsolasSony y Playstation. Sony puede fabricar varias versiones de Playstation, pero todas las versiones de Playstation
 solo pueden ser creadas por Sony
*/
CREATE DATABASE unoamuchos
GO
use unoamuchos
GO
CREATE TABLE ConsolasSony(
ID BIGINT NOT NULL PRIMARY KEY,
Modelo VARCHAR(25) NOT NULL,
AñoLanzamiento BIGINT NOT NULL,
)

CREATE TABLE Playstation(
    IDConsola BIGINT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES ConsolasSony(ID),
    CantidadJuegos BIGINT NOT NULL,
    JuegoMasVendido varchar(30) NOT NULL,
    Discontinuado BIT NOT NULL, 
)
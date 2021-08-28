/*Relacion muchos a muchos
se generas las tablas vinotecas. Un supermercado puede tener varios proveedores y un proveedor puede tener varios supermercados
*/
CREATE DATABASE muchosamuchos
GO
use muchosamuchos
GO
CREATE TABLE Supermercados(
    ID BIGINT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Direccion VARCHAR(30) NOT NULL,
    Localidad VARCHAR(30) NOT NULL,
    FechaApertura date NOT NULL CHECK(FechaApertura<GETDATE() )
)

CREATE TABLE Proveedores(
    ID BIGINT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Cuit BIGINT NOT NULL UNIQUE,
)

CREATE TABLE ProveedoresDeSupermercados(
    IDSupermercado BIGINT NOT NULL FOREIGN KEY REFERENCES Supermercados(ID),
    IDProveedor BIGINT NOT NULL FOREIGN KEY REFERENCES Proveedores(ID),
    CategoriaProductos VARCHAR(30) NOT NULL,
    
)
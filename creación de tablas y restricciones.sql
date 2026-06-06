CREATE DATABASE CineMax;

USE CineMax;

CREATE TABLE Clientes
(
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(100),
    Telefono VARCHAR(20)
);

CREATE TABLE Generos
(
    GeneroID INT IDENTITY(1,1) PRIMARY KEY,
    NombreGenero VARCHAR(50) NOT NULL
);

CREATE TABLE Peliculas
(
    PeliculaID INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    DuracionMinutos INT NOT NULL,
    PrecioEntrada DECIMAL(10,2) NOT NULL,
    FK_GeneroID INT NOT NULL,

    FOREIGN KEY(FK_GeneroID)
        REFERENCES Generos(GeneroID)
);

CREATE TABLE Salas
(
    SalaID INT IDENTITY(1,1) PRIMARY KEY,
    NombreSala VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL
);

CREATE TABLE Funciones
(
    FuncionID INT IDENTITY(1,1) PRIMARY KEY,
    FK_PeliculaID INT NOT NULL,
    FK_SalaID INT NOT NULL,
    Horario DATETIME NOT NULL,

    FOREIGN KEY(FK_PeliculaID)
        REFERENCES Peliculas(PeliculaID),

    FOREIGN KEY(FK_SalaID)
        REFERENCES Salas(SalaID)
);

CREATE TABLE Ventas
(
    VentaID INT IDENTITY(1,1) PRIMARY KEY,

    FK_ClienteID INT NOT NULL,
    FK_FuncionID INT NOT NULL,
    CantidadEntradas INT NOT NULL,
    TotalPagado DECIMAL(10,2) NOT NULL,
    FechaVenta DATETIME DEFAULT GETDATE(),

    FOREIGN KEY(FK_ClienteID)
        REFERENCES Clientes(ClienteID),

    FOREIGN KEY(FK_FuncionID)
        REFERENCES Funciones(FuncionID)
);

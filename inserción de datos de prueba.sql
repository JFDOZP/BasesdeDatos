INSERT INTO Generos (NombreGenero)
VALUES
('Accion'),
('Comedia'),
('Drama'),
('Terror'),
('Ciencia Ficcion');

INSERT INTO Clientes
(Nombre,CorreoElectronico,Telefono)
VALUES
('Cliente01','cliente01@correo.com','3000000001'),
('Cliente02','cliente02@correo.com','3000000002'),
('Cliente03','cliente03@correo.com','3000000003'),
('Cliente04','cliente04@correo.com','3000000004'),
('Cliente05','cliente05@correo.com','3000000005');

INSERT INTO Peliculas
(Titulo,DuracionMinutos,PrecioEntrada,FK_GeneroID)
VALUES
('Pelicula01',90,12000,1),
('Pelicula02',110,14000,2),
('Pelicula03',120,15000,3),
('Pelicula04',100,13000,4),
('Pelicula05',130,18000,5);

INSERT INTO Salas
(NombreSala,Capacidad)
VALUES
('Sala01',100),
('Sala02',120),
('Sala03',80);

INSERT INTO Funciones
(FK_PeliculaID,FK_SalaID,Horario)
VALUES
(1,1,'2026-06-15 10:00:00'),
(2,2,'2026-06-15 14:00:00'),
(3,3,'2026-06-15 18:00:00'),
(4,1,'2026-06-16 16:00:00'),
(5,2,'2026-06-16 20:00:00');

INSERT INTO Ventas
(FK_ClienteID,FK_FuncionID,CantidadEntradas,TotalPagado)
VALUES
(1,1,2,24000),
(2,2,3,42000),
(3,3,1,15000);
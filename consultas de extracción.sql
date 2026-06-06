-- Cartelera
SELECT
    P.Titulo,
    G.NombreGenero,
    S.NombreSala,
    F.Horario
FROM Funciones F
INNER JOIN Peliculas P
    ON F.FK_PeliculaID = P.PeliculaID
INNER JOIN Generos G
    ON P.FK_GeneroID = G.GeneroID
INNER JOIN Salas S
    ON F.FK_SalaID = S.SalaID;

-- Ventas
SELECT
    V.VentaID,
    C.Nombre,
    V.CantidadEntradas,
    V.TotalPagado,
    V.FechaVenta
FROM Ventas V
INNER JOIN Clientes C
    ON V.FK_ClienteID = C.ClienteID;

-- Ventas
SELECT
    V.VentaID,
    C.Nombre AS Cliente,
    P.Titulo AS Pelicula,
    G.NombreGenero AS Genero,
    S.NombreSala AS Sala,
    F.Horario,
    V.CantidadEntradas,
    V.TotalPagado
FROM Ventas V
INNER JOIN Clientes C
    ON V.FK_ClienteID = C.ClienteID
INNER JOIN Funciones F
    ON V.FK_FuncionID = F.FuncionID
INNER JOIN Peliculas P
    ON F.FK_PeliculaID = P.PeliculaID
INNER JOIN Generos G
    ON P.FK_GeneroID = G.GeneroID
INNER JOIN Salas S
    ON F.FK_SalaID = S.SalaID;
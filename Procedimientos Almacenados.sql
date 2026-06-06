-- Realizar una Venta
CREATE PROCEDURE Venta
(
    @ClienteID INT,
    @FuncionID INT,
    @CantidadEntradas INT,
    @TotalPagado DECIMAL(10,2)
)
AS
BEGIN

    INSERT INTO Ventas
    (
        FK_ClienteID,
        FK_FuncionID,
        CantidadEntradas,
        TotalPagado
    )
    VALUES
    (
        @ClienteID,
        @FuncionID,
        @CantidadEntradas,
        @TotalPagado
    );

END;

-- Funcionamiento


-- Ticket
CREATE PROCEDURE Ticket
(
    @VentaID INT
)
AS
BEGIN

    SELECT
        V.VentaID AS NumeroVenta,
        C.Nombre AS Cliente,
        P.Titulo AS Pelicula,
        G.NombreGenero AS Genero,
        S.NombreSala AS Sala,
        F.Horario AS HorarioFuncion,
        V.CantidadEntradas,
        V.TotalPagado,
        V.FechaVenta
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
        ON F.FK_SalaID = S.SalaID

    WHERE V.VentaID = @VentaID;

END;
GO
-- 4 c. Escribir un procedimiento almacenado que dado un rango de fechas, retorne por parámetros
--de salida la cantidad de inspecciones que tuvieron un resultado 'Oficina no encontrada' y la
--cantidad de inspecciones que no tienen comentarios.

--EJECUTAR PROCEDIMIENTO

USE FoodInspections;
GO


CREATE OR ALTER PROCEDURE sp_ContarInspeccionesPorRangoDeFechas
(
    @FechaInicio DATE,
    @FechaFin DATE,
    @CantidadOficinaNoEncontrada INT OUTPUT,
    @CantidadSinComentarios INT OUTPUT
)
AS
BEGIN
    -- Contar inspecciones con resultado 'Oficina no encontrada'
    SELECT @CantidadOficinaNoEncontrada = COUNT(*)
    FROM Inspecciones
    WHERE inspFecha BETWEEN @FechaInicio AND @FechaFin
      AND inspResultado = 'Oficina no encontrada';
    
    -- Contar inspecciones sin comentarios
    SELECT @CantidadSinComentarios = COUNT(*)
    FROM Inspecciones
    WHERE inspFecha BETWEEN @FechaInicio AND @FechaFin
      AND (inspComents IS NULL OR inspComents = '');

END;
GO



--MOSTRAR RESULTADOS

DECLARE @CantidadOficinaNoEncontrada INT;
DECLARE @CantidadSinComentarios INT;

EXEC sp_ContarInspeccionesPorRangoDeFechas
    @FechaInicio = '2023-06-17',
    @FechaFin = '2024-06-17',
    @CantidadOficinaNoEncontrada = @CantidadOficinaNoEncontrada OUTPUT,
    @CantidadSinComentarios = @CantidadSinComentarios OUTPUT;

SELECT @CantidadOficinaNoEncontrada AS CantidadOficinaNoEncontrada,
       @CantidadSinComentarios AS CantidadSinComentarios;




--BORRAR PROCEDIMIENTO

--USE FoodInspections;
--GO

--DROP PROCEDURE sp_ContarInspeccionesPorRangoDeFechas;
--GO

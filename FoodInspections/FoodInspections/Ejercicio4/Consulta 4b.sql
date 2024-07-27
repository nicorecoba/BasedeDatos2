--4 b Mediante una función que reciba un código de violación, devolver cuantos establecimientos
--con licencia vencida y nunca renovada tuvieron dicha violación.


--EJECUTAR FUNCTION

USE FoodInspections;
GO

CREATE FUNCTION dbo.fn_EstablecimientosConViolacion
(
    @violCodigo INT
)
RETURNS INT
AS
BEGIN
    DECLARE @result INT;

    SELECT @result = COUNT(DISTINCT e.estNumero)
    FROM Establecimientos e
    JOIN Licencias l ON e.estNumero = l.estNumero
    JOIN Inspecciones i ON e.estNumero = i.estNumero
    WHERE l.licFchVto < GETDATE()  -- Licencia vencida
      AND NOT EXISTS (
          SELECT 1
          FROM Licencias l2
          WHERE l2.estNumero = l.estNumero
            AND l2.licFchEmision > l.licFchVto -- Verifica que no hay renovaciones después de la fecha de vencimiento
      )
      AND i.violCodigo = @violCodigo;

    RETURN @result;
END
GO


--MOSTRAR RESULTADOS

SELECT dbo.fn_EstablecimientosConViolacion(5) AS CantidadEstablecimientos;




--PARA BORRAR FUNCTION

--USE FoodInspections;
--GO

--DROP FUNCTION dbo.fn_EstablecimientosConViolacion;
--GO
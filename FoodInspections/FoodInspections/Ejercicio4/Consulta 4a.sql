--4a-Escribir un procedimiento almacenado que dado un tipo de riesgo ('Bajo','Medio','Alto'),
--	muestre los datos de las violaciones (violCodigo, violDescrip) para dicho tipo, no devolver
--	datos repetidos

--EJECUTAR PROCEDIMIENTO

USE FoodInspections;
GO

CREATE PROCEDURE ObtenerViolacionesPorRiesgo
    @Riesgo VARCHAR(5)
AS
BEGIN
    -- Seleccionar las violaciones para el tipo de riesgo dado
    SELECT DISTINCT v.violCodigo, v.violDescrip
    FROM Inspecciones i
    INNER JOIN TipoViolacion v ON i.violCodigo = v.violCodigo
    WHERE i.inspRiesgo = @Riesgo
    ORDER BY v.violCodigo;
END;
GO



--MOSTRAR RESULTADOS

EXEC ObtenerViolacionesPorRiesgo 'Bajo';



--EN CASO DE QUERER ELIMINARLO

--USE FoodInspections;
--GO

--DROP PROCEDURE ObtenerViolacionesPorRiesgo;
--GO

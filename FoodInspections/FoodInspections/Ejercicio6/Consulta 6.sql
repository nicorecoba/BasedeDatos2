--6 .Escribir una vista que muestre todos los datos de las licencias vigentes y los días que faltan para
--	el vencimiento de cada una de ellas.

--EJECUTAR PRIMERO

CREATE VIEW LicenciasVigentes AS
SELECT 
    licNumero,
    estNumero,
    licFchEmision,
    licFchVto,
    licStatus,
    DATEDIFF(DAY, GETDATE(), licFchVto) AS DiasParaVencimiento
FROM 
    Licencias
WHERE 
    licFchVto >= GETDATE() AND
    licStatus = 'APR';

--HASTA ACA



--MOSTRAR RESULTADOS

	SELECT * FROM LicenciasVigentes;



	--En caso de querer eliminar la vista

	--DROP VIEW LicenciasVigentes

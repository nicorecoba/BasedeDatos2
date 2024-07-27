--5 a. Cada vez que se crea un nuevo establecimiento, se debe crear una licencia de aprobación
--con vencimiento 90 días, el disparador debe ser escrito teniendo en cuenta la posibilidad de
--ingresos múltiples.


--EJECUTAR TRIGGER

USE FoodInspections;
GO


CREATE TRIGGER trg_CrearLicenciaAprobacion
ON Establecimientos
AFTER INSERT
AS
BEGIN
    -- Insertar las nuevas licencias de aprobación con vencimiento a 90 días
    INSERT INTO Licencias (estNumero, licFchEmision, licFchVto, licStatus)
    SELECT 
        i.estNumero,
        GETDATE() AS licFchEmision,
        DATEADD(DAY, 90, GETDATE()) AS licFchVto,
        'APR' AS licStatus
    FROM 
        INSERTED i;
END;
GO


--MOSTRAR RESULTADOS


INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES
('Nuevo Establecimiento 1', 'Calle 1', '12345678', 34.9123, -56.1899),
('Nuevo Establecimiento 2', 'Calle 2', '23456789', 34.9234, -56.1988);

-- Verificar las licencias creadas con la fecha de vencimiento y la cantidad de días
SELECT 
    l.estNumero,
    e.estNombre,
    l.licFchEmision,
    l.licFchVto,
    DATEDIFF(DAY, l.licFchEmision, l.licFchVto) AS DiasDeVencimiento,
    l.licStatus
FROM 
    Licencias l
JOIN 
    Establecimientos e ON l.estNumero = e.estNumero
WHERE 
    e.estNombre IN ('Nuevo Establecimiento 1', 'Nuevo Establecimiento 2');



--En caso de querer eliminarlo

--USE FoodInspections;
--GO

--DROP TRIGGER trg_CrearLicenciaAprobacion;
--GO
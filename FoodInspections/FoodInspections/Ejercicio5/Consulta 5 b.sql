--5 b. No permitir que se ingresen inspecciones de establecimientos cuya licencia está próxima a
--vencer, se entiende por próxima a vencer a todas aquellas cuyo vencimiento esté dentro de
--los siguientes 5 días, el disparador debe tener en cuenta la posibilidad de registros
--múltiples.


--EJECUTAR TRIGGER

USE FoodInspections;
GO


CREATE TRIGGER trg_NoInspeccionesProximaVencimiento
ON Inspecciones
INSTEAD OF INSERT
AS
BEGIN
    -- Verificar si algún establecimiento tiene una licencia que vence en los próximos 5 días
    IF EXISTS (
        SELECT 1
        FROM INSERTED i
        JOIN Licencias l ON i.estNumero = l.estNumero
        WHERE l.licFchVto BETWEEN GETDATE() AND DATEADD(DAY, 5, GETDATE())
          AND l.licStatus = 'APR'
    )
    BEGIN
        -- Si existe, cancelar la operación de inserción y mostrar un mensaje de error
        RAISERROR ('No se pueden ingresar inspecciones para establecimientos con licencias próximas a vencer en los próximos 5 días.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        -- Si no existe, permitir la inserción de las inspecciones
        INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents)
        SELECT inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents
        FROM INSERTED;
    END
END;
GO


--HASTA ACA


--EJECUTAR PRUEBA

-- Insertar un nuevo establecimiento
INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES ('Ejemplo Establecimiento', 'Calle Falsa 123', '12345678', 34.9051, -56.1861);

-- Verificar el estNumero del establecimiento recién insertado
SELECT estNumero FROM Establecimientos WHERE estNombre = 'Ejemplo Establecimiento';

-- Supongamos que el estNumero es 31
-- Insertar una licencia para el establecimiento con fecha de vencimiento dentro de 5 días
INSERT INTO Licencias (estNumero, licFchEmision, licFchVto, licStatus)
VALUES (31, GETDATE(), DATEADD(DAY, 4, GETDATE()), 'APR');

--HASTA ACA


--INSERT DE INSPECCION QUE DEBERIA DAR ERROR

INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents)
VALUES (GETDATE(), 31, 'Bajo', 'Pasa', 1, 'Todo en orden');



--en caso de querer eliminar el trigger

--drop trigger trg_NoInspeccionesProximaVencimiento;
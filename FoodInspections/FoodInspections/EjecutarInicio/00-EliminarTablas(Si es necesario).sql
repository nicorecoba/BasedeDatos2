USE FoodInspections;
GO

-- Eliminar las tablas en el orden correcto para evitar errores de restricción de claves foráneas
IF OBJECT_ID('Inspecciones', 'U') IS NOT NULL
    DROP TABLE Inspecciones;
GO

IF OBJECT_ID('Licencias', 'U') IS NOT NULL
    DROP TABLE Licencias;
GO

IF OBJECT_ID('Establecimientos', 'U') IS NOT NULL
    DROP TABLE Establecimientos;
GO

IF OBJECT_ID('TipoViolacion', 'U') IS NOT NULL
    DROP TABLE TipoViolacion;
GO
USE FoodInspections;
GO

-- �ndices en la tabla Establecimientos
CREATE INDEX idx_estNombre ON Establecimientos(estNombre);
CREATE INDEX idx_estDireccion ON Establecimientos(estDireccion);

-- �ndices en la tabla Licencias
CREATE INDEX idx_estNumero_Licencias ON Licencias(estNumero);
CREATE INDEX idx_licFchVto ON Licencias(licFchVto);

-- �ndices en la tabla Inspecciones
CREATE INDEX idx_estNumero_Inspecciones ON Inspecciones(estNumero);
CREATE INDEX idx_inspFecha ON Inspecciones(inspFecha);
CREATE INDEX idx_inspResultado ON Inspecciones(inspResultado);
GO
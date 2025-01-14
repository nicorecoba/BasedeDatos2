INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES
('Casa Luc�a', 'Av 18 de Julio 1234', '24001234', 34.9051, -56.1861),
('La Huella', 'Av 8 de Octubre 4321', '24012345', 34.9052, -56.1862),
('Mart�n Fierro', 'Blvr Artigas 5678', '24023456', 34.9053, -56.1863),
('El Palenque', 'Agraciada 7890', '24034567', 34.9054, -56.1864),
('La Perdiz', 'Rivera 9101', '24045678', 34.9055, -56.1865),
('Panini', 'San Mart�n 1023', '24056789', 34.9056, -56.1866),
('Francis', 'Mill�n 1045', '24067890', 34.9057, -56.1867),
('Garcia', 'Av Brasil 1123', '24078901', 34.9058, -56.1868),
('La Cocina de Pedro', 'Ellauri 2134', '24089012', 34.9059, -56.1869),
('Primuseum', 'Av Italia 2145', '24090123', 34.9060, -56.1870),
('El Fog�n', 'Colonia 3156', '24001235', 34.9061, -56.1871),
('El Prado', 'Paraguay 4167', '24012346', 34.9062, -56.1872),
('El Esquinazo', 'Mercedes 5178', '24023457', 34.9063, -56.1873),
('Estrecho', 'Yaguar�n 6189', '24034568', 34.9064, -56.1874),
('Pellicer', 'Ejido 7190', '24045679', 34.9065, -56.1875),
('Nuevo Garc�a', 'San Jos� 8201', '24056780', 34.9066, -56.1876),
('El Alem�n', 'Canelones 9212', '24067891', 34.9067, -56.1877),
('La Pulper�a', 'Andes 10234', '24078902', 34.9068, -56.1878),
('Tandory', 'Florida 11245', '24089013', 34.9069, -56.1879),
('Jacinto', 'Colonia 12256', '24090124', 34.9070, -56.1880),
('La Corte', 'Cerro Largo 13267', '24001236', 34.9071, -56.1881),
('El Fog�n Art�stico', 'Av 18 de Julio 14278', '24012347', 34.9072, -56.1882),
('Sin Pretensiones', '8 de Octubre 15289', '24023458', 34.9073, -56.1883),
('Punta Carretas Grill', 'Blvr Artigas 16290', '24034569', 34.9074, -56.1884),
('Negroni', 'Agraciada 17201', '24045680', 34.9075, -56.1885),
('Bar Tabar�', 'Rivera 18212', '24056781', 34.9076, -56.1886),
('Burlesque', 'San Mart�n 19223', '24067892', 34.9077, -56.1887),
('Panini Express', 'Mill�n 20234', '24078903', 34.9078, -56.1888),
('La Chacra', 'Av Brasil 21245', '24089014', 34.9079, -56.1889),
('La Cantina del Vigia', 'Ellauri 22256', '24090125', 34.9080, -56.1890);



-- Insertar datos en la tabla Licencias
INSERT INTO Licencias (estNumero, licFchEmision, licFchVto, licStatus)
VALUES
(1, '2022-05-05', '2023-06-17', 'REV'),
(2, '2023-04-04', '2024-06-1', 'REV'),
(3, '2024-03-03', '2025-03-13', 'APR'),
(4, '2022-02-02', '2023-02-12', 'REV'),
(5, '2024-01-01', '2024-11-11', 'APR'),
(6, '2022-06-06', '2023-09-26', 'REV'),
(7, '2022-07-07', '2023-04-27', 'REV'),
(8, '2024-08-08', '2025-03-18', 'APR'),
(9, '2022-09-09', '2023-01-09', 'REV'),
(10, '2024-10-10', '2024-12-15', 'APR'),
(11, '2022-11-11', '2023-12-19', 'REV'),
(12, '2024-12-12', '2025-1-12', 'APR'),
(13, '2022-01-13', '2023-04-23', 'REV'),
(14, '2024-02-14', '2025-08-10', 'APR'),
(15, '2024-03-15', '2025-09-05', 'APR'),
(16, '2022-04-16', '2023-07-06', 'REV'),
(17, '2024-05-17', '2025-03-18', 'APR'),
(18, '2022-06-18', '2023-08-13', 'REV'),
(19, '2022-07-19', '2023-04-29', 'REV'),
(20, '2024-08-20', '2025-05-30', 'APR'),
(21, '2024-09-21', '2025-05-31', 'APR'),
(22, '2022-10-22', '2023-11-02', 'REV'),
(23, '2024-11-23', '2025-11-23', 'APR'),
(24, '2022-12-24', '2023-10-24', 'REV'),
(25, '2024-01-25', '2025-01-05', 'APR'),
(26, '2024-02-26', '2025-05-16', 'APR'),
(27, '2022-03-27', '2023-06-07', 'REV'),
(28, '2022-04-28', '2023-09-28', 'REV'),
(29, '2024-05-29', '2025-04-09', 'APR'),
(30, '2024-06-30', '2025-08-20', 'APR');

-- Insertar datos en la tabla TipoViolacion
INSERT INTO TipoViolacion (violDescrip)
VALUES
('Ninguna'),
('Higiene'),
('Almacenamiento incorrecto'),
('Temperatura inadecuada'),
('Productos vencidos'),
('Limpieza deficiente'),
('Ausencia de controles'),
('Equipamiento sucio'),
('Falta de documentaci�n'),
('Mala disposici�n de residuos');

INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents)
VALUES
('2023-15-01', 1, 'Bajo', 'Pasa', 1, 'Oficina no encontrada'),
('2024-25-05', 2, 'Medio', 'Falla', 3, 'Temperatura del refrigerador incorrecta'),
('2024-03-02', 3, 'Alto', 'Falla', 5, 'Productos vencidos encontrados'),
('2024-17-09', 4, 'Bajo', 'Oficina no encontrada', 2, 'Oficina no encontrada'),
('2023-10-07', 5, 'Medio', 'Pasa', 4, 'Falta de limpieza en las mesas'),
('2024-28-03', 6, 'Alto', 'Falla', 5, 'Mal manejo de alimentos crudos'),
('2023-20-11', 7, 'Bajo', 'Pasa', 7, null),
('2024-14-02', 8, 'Medio', 'Pasa con condiciones', 8, 'Equipamiento sucio detectado'),
('2024-30-05', 9, 'Alto', 'Falla', 5, 'Productos vencidos encontrados'),
('2024-05-01', 10, 'Bajo', 'Pasa', 10, null),
('2023-19-11', 11, 'Medio', 'Pasa con condiciones', 1, 'Oficina no encontrada'),
('2024-22-04', 12, 'Bajo', 'Pasa', 2, 'Temperatura del refrigerador incorrecta'),
('2024-02-03', 13, 'Alto', 'Falla', 5, 'Productos vencidos encontrados'),
('2023-07-09', 14, 'Medio', 'Pasa', 8, null),
('2023-08-10', 15, 'Alto', 'Falla', 5, 'Falta de limpieza en las mesas'),
('2024-10-01', 16, 'Bajo', 'Oficina no encontrada', 1, 'Oficina no encontrada'),
('2023-25-11', 17, 'Medio', 'Pasa', 7, '�rea de preparaci�n en buen estado'),
('2024-09-03', 18, 'Alto', 'Falla', 8, 'Equipamiento sucio detectado'),
('2023-30-04', 19, 'Bajo', 'Pasa', 9, null),
('2024-20-05', 20, 'Bajo', 'Pasa', 10, 'Buen control de higiene'),
('2023-15-05', 21, 'Bajo', 'Pasa', 9, ''),
('2024-02-02', 22, 'Alto', 'Falla', 5, 'Productos vencidos encontrados'),
('2023-28-07', 23, 'Bajo', 'Oficina no encontrada', 4, 'Oficina no encontrada'),
('2024-06-03', 24, 'Medio', 'Falla', 5, 'Productos vencidos encontrados'),
('2023-31-12', 25, 'Alto', 'Falla', 8, 'Equipamiento sucio detectado'),
('2024-09-03', 26, 'Bajo', 'Pasa', 7, null),
('2024-30-01', 27, 'Medio', 'Pasa con condiciones', 8, 'Equipamiento de seguridad en buen estado'),
('2024-21-04', 28, 'Alto', 'Falla', 9, 'Falta de documentaci�n de seguridad alimentaria'),
('2024-07-05', 29, 'Bajo', 'Oficina no encontrada', 10, 'Oficina no encontrada'),
('2024-17-06', 30, 'Medio', 'Falla', 8, 'Equipamiento sucio detectado'),
--todas las violaciones cumplidas
('2023-12-10', 2, 'Medio', 'Falla', 4, 'Falta de documentaci�n de seguridad'),
('2024-30-04', 2, 'Bajo', 'Oficina no encontrada', 1, 'Oficina no encontrada'),
('2023-1-05', 2, 'Medio', 'Pasa', 6, null),
('2023-1-08', 2, 'Alto', 'Falla', 5, 'Productos vencidos encontrados'),
('2024-13-04', 2, 'Bajo', 'Pasa', 10, null),
('2023-11-07', 2, 'Medio', 'Falla', 9, 'Falta de documentaci�n de seguridad'),
('2024-17-05', 2, 'Bajo', 'Pasa', 8, null),
('2023-25-02', 2, 'Medio', 'Falla', 2, ''),
('2024-19-01', 2, 'Alto', 'Falla', 7, 'Equipamiento sucio detectado');

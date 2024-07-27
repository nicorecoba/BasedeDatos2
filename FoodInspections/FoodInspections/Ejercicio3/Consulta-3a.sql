--a. Mostrar nombre, direcci�n y tel�fono de los establecimientos que tuvieron la inspecci�n fallida
--m�s reciente.

SELECT E.estNombre, E.estDireccion, E.estTelefono, CAST(I.inspFecha AS DATE) AS FechaInspeccion

FROM Establecimientos E JOIN Inspecciones I ON E.estNumero = I.estNumero

WHERE I.inspResultado = 'Falla'  AND I.inspFecha = ( SELECT MAX(I2.inspFecha)
													 FROM Inspecciones I2
													 WHERE I2.inspResultado = 'Falla' );


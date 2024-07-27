--3 c- Mostrar n�mero y nombre de los establecimientos que cometieron todos los tipos de violaci�n que existen


SELECT E.estNumero, E.estNombre

FROM Establecimientos E JOIN (  SELECT I.estNumero, COUNT(DISTINCT I.violCodigo) AS ViolacionesUnicas
								FROM Inspecciones I
								GROUP BY I.estNumero) AS ViolacionesPorEstablecimiento ON E.estNumero = ViolacionesPorEstablecimiento.estNumero

WHERE ViolacionesPorEstablecimiento.ViolacionesUnicas = (SELECT COUNT(*) FROM TipoViolacion);
--3a - Mostrar los 5 tipos de violaciones mas comunes, el informe debe mostrar c�digo y descripci�n
--de la violaci�n y cantidad de inspecciones en el a�o presente.


SELECT TOP 5 T.violCodigo, T.violDescrip, COUNT(*) as cantidad_inspecciones

FROM TipoViolacion T JOIN Inspecciones I ON T.violCodigo = I.violCodigo

WHERE YEAR(I.inspFecha) = YEAR(GETDATE())

GROUP BY T.violCodigo, T.violDescrip

ORDER BY cantidad_inspecciones DESC;


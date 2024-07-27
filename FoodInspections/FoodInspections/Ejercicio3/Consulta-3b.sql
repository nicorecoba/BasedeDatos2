--3a - Mostrar los 5 tipos de violaciones mas comunes, el informe debe mostrar código y descripción
--de la violación y cantidad de inspecciones en el año presente.


SELECT TOP 5 T.violCodigo, T.violDescrip, COUNT(*) as cantidad_inspecciones

FROM TipoViolacion T JOIN Inspecciones I ON T.violCodigo = I.violCodigo

WHERE YEAR(I.inspFecha) = YEAR(GETDATE())

GROUP BY T.violCodigo, T.violDescrip

ORDER BY cantidad_inspecciones DESC;


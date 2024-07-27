--d. Mostrar el porcentaje de inspecciones reprobadas por cada establecimiento, incluir dentro de
--la reprobación las categorías 'Falla', 'Pasa con condiciones'.

SELECT   E.estNumero, E.estNombre, 
		 CAST(COUNT(CASE WHEN I.inspResultado IN ('Falla', 'Pasa con condiciones') THEN 1 END) * 100.0 / COUNT(*) AS DECIMAL(5, 2)) AS PorcentajeReprobadas

FROM     Establecimientos E JOIN Inspecciones I ON E.estNumero = I.estNumero

GROUP BY E.estNumero, E.estNombre

ORDER BY PorcentajeReprobadas DESC;


--3f. Mostrar el tiempo promedio que tarda cada establecimiento en renovar su licencia.

SELECT 
    E.estNombre,
    AVG(DATEDIFF(day, L.licFchEmision, L.licFchVto)) AS 'Tiempo Promedio Renovaci�n (d�as)'
FROM 
    Establecimientos E
JOIN 
    Licencias L ON E.estNumero = L.estNumero
GROUP BY 
    E.estNombre
ORDER BY
	'Tiempo Promedio Renovaci�n (d�as)' DESC;
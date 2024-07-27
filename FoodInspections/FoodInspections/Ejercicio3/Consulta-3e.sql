--e. Mostrar el ranking de inspecciones de establecimientos, dicho ranking debe mostrar número
--y nombre del establecimiento, total de inspecciones, total de inspecciones aprobadas
--('Pasa'), porcentaje de dichas inspecciones aprobadas, total de inspecciones reprobadas
--('Falla', 'Pasa con condiciones') y porcentaje de dichas inspecciones reprobadas, solo
--tener en cuenta establecimientos cuyo status de licencia es APR.SELECT
    E.estNumero,
    E.estNombre,
    COUNT(I.inspID) AS TotalInspecciones,
    COUNT(CASE WHEN I.inspResultado = 'Pasa' THEN 1 END) AS TotalAprobadas,
    CAST(COUNT(CASE WHEN I.inspResultado = 'Pasa' THEN 1 END) * 100.0 / COUNT(I.inspID) AS DECIMAL(5, 2)) AS PorcentajeAprobadas,
    COUNT(CASE WHEN I.inspResultado IN ('Falla', 'Pasa con condiciones') THEN 1 END) AS TotalReprobadas,
    CAST(COUNT(CASE WHEN I.inspResultado IN ('Falla', 'Pasa con condiciones') THEN 1 END) * 100.0 / COUNT(I.inspID) AS DECIMAL(5, 2)) AS PorcentajeReprobadas
FROM 
    Establecimientos E
JOIN 
    Inspecciones I ON E.estNumero = I.estNumero
JOIN 
    Licencias L ON E.estNumero = L.estNumero
WHERE 
    L.licStatus = 'APR'
GROUP BY 
    E.estNumero, 
    E.estNombre
ORDER BY 
    PorcentajeReprobadas DESC;


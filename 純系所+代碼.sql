WITH T (crsY, col, crs_depname, crs_depno)
AS
(
    SELECT crsY, col, crs_depname, crs_depno
    FROM depID
    WHERE (crs_depname NOT LIKE '無' AND crs_depname NOT LIKE '%大學%' OR crs_depname LIKE '%大學部%' OR crs_depname LIKE '%陽明%' OR crs_depname LIKE '%台灣聯合大學系統%')
	GROUP BY crsY, col, crs_depname, crs_depno
)
SELECT *
FROM T
WHERE PATINDEX('%[A-Za-Z]%', crs_depno) = 0 AND crsY > 108
ORDER BY crsY ASC, col ASC, crs_depname ASC
WITH T (crsY, col, crs_depname, crs_depno)
AS
(
    SELECT crsY, col, crs_depname, crs_depno
    FROM depID
    WHERE (crs_depname NOT LIKE '�L' AND crs_depname NOT LIKE '%�j��%' OR crs_depname LIKE '%�j�ǳ�%' OR crs_depname LIKE '%����%' OR crs_depname LIKE '%�x�W�p�X�j�Ǩt��%')
	GROUP BY crsY, col, crs_depname, crs_depno
)
SELECT *
FROM T
WHERE PATINDEX('%[A-Za-Z]%', crs_depno) = 0 AND crsY > 108
ORDER BY crsY ASC, col ASC, crs_depname ASC
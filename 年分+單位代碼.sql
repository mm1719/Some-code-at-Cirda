select crsY, crs_depno, crs_depname FROM depID
WHERE (crs_depname NOT LIKE '�L' AND crs_depname NOT LIKE '%�j��%' OR crs_depname LIKE '%�j�ǳ�%' OR crs_depname LIKE '%����%' OR crs_depname LIKE '%�x�W�p�X�j�Ǩt��%')
GROUP BY crsY, crs_depno, crs_depname
ORDER BY crsY ASC, crs_depname ASC
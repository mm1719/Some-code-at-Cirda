select distinct crs_depname FROM depID
WHERE crs_depno != 'UN' 
      AND (crs_depname NOT LIKE '�L' AND crs_depname NOT LIKE '%�j��%' OR crs_depname LIKE '%�j�ǳ�%' OR crs_depname LIKE '%����%' OR crs_depname LIKE '%�x�W�p�X�j�Ǩt��%')
ORDER BY crs_depname ASC
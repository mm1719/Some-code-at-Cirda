select distinct crs_depname FROM depID
WHERE crs_depno != 'UN' 
      AND (crs_depname NOT LIKE '無' AND crs_depname NOT LIKE '%大學%' OR crs_depname LIKE '%大學部%' OR crs_depname LIKE '%陽明%' OR crs_depname LIKE '%台灣聯合大學系統%')
ORDER BY crs_depname ASC
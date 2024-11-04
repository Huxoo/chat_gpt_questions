SELECT CUS.NAMESURNAME, ADR.CITY, ORF.NETTOTAL,
ROW_NUMBER() OVER (PARTITION BY ADR.CITY ORDER BY ORF.NETTOTAL DESC) AS CITY_RANK
FROM ORDERFICHE ORF
INNER JOIN CUSTOMER CUS ON CUS.ID = ORF.CUSTOMERID
INNER JOIN ADDRESS ADR ON ADR.ID = ORF.ADDRESSID
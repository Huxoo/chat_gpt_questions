SELECT CITY, COUNT(*) AS sehirdeki_adres_sayisi
FROM ADDRESS
GROUP BY CITY
ORDER BY CITY;
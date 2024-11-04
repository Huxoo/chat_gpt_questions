SELECT NAMESURNAME, GENDER, BIRTHDATE, ADR.CITY, TLNR1,
ADR.TOWN, ADR.ADDRESSTYPE, ADR.ADDRESSLINE,
PYT.PAYMENTTYPE, DLV.DELIVERTYPTE,
ITM.ITEMNAME, ITM.PRICE,
ORF.FICHENO, ORF.DATE_, ORF.TOTALPRICE, ORF.TOTALVAT, ORF.NETTOTAL
FROM ORDERLINE ORL
JOIN ORDERFICHE ORF ON ORF.ID = ORL.ORDERFICHEID
JOIN ITEMS ITM ON ITM.ID = ORL.ITEMID
JOIN ADDRESS ADR ON ADR.ID = ORF.ADDRESSID
JOIN PAYMENTTYPE PYT ON PYT.ID = ORF.PAYMENTTYPEID
JOIN CUSTOMER CUS ON CUS.ID = ORF.CUSTOMERID
JOIN DELIVERTYPE DLV ON DLV.ID = ORF.DELIVERYTYPEID
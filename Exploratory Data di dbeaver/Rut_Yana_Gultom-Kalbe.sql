--Query 1
SELECT 
    "marital_status",
    AVG("age") AS "Averageage"
FROM
    "customer"
GROUP BY
    "marital_status";

--Query 2
SELECT 
    "gender",
    AVG("age") AS "Averageage"
FROM
    "customer"
GROUP BY
    "gender";
   
--Query 3
SELECT 
    s."storename",
    SUM(t."qty") AS "TotalQuantity"
FROM
    "transaction" t
JOIN
    "store" s ON t."storeid" = s."storeid"
GROUP BY
    s."storename"
ORDER BY
    "TotalQuantity" DESC
LIMIT 1;

--Query 4
SELECT 
    p."productname",
    SUM(t."totalamount") AS "totalamount"
FROM
    "transaction" t
JOIN
    "product" p ON t."productid" = p."productid"
GROUP BY
    p."productname"
ORDER BY
    "totalamount" DESC
LIMIT 1;


   

SELECT products.productLine AS 'Product Line', sum(quantityOrdered) AS '#Sold'
FROM orderdetails, products,productlines 
where products.productCode = orderdetails.productcode 
AND productlines.productline = products.productline
GROUP BY products.productline
ORDER BY sum(quantityOrdered) DESC;


SELECT products.productLine AS 'Product Line', sum(quantityOrdered) AS '#Sold'
FROM 
products JOIN orderdetails ON products.productCode = orderdetails.productCode
JOIN productlines ON productlines.productLine = products.productLine
GROUP BY products.productline
ORDER BY sum(quantityOrdered) DESC;





--ORDER BY orderdetails.productCode; 













SELECT products.productLine, SUM(quantityOrdered) FROM orderdetails, products 
WHERE  orderdetails.productcode=products.productCode
GROUP BY orderdetails.productCode
ORDER BY products.productLine; 






SELECT orderdetails.productCode,SUM(orderdetails.quantityOrdered) FROM orderdetails
GROUP BY orderdetails.productCode
ORDER BY orderdetails.productCode;








SELECT * FROM orderdetails ORDER BY productcode;

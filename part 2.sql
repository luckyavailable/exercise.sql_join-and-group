SELECT * FROM products;

SELECT * FROM payments;
SELECT * FROM orderdetails;

SELECT productName AS 'Product Name',(quantityOrdered * priceEach) AS 'Total sale' 
FROM products JOIN orderdetails ON products.productcode=orderdetails.productcode 
ORDER BY  (quantityOrdered * priceEach) desc;
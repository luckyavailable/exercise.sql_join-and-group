SELECT CONCAT(employees.lastName,employees.firstName) AS 'Sales Rep',
COUNT(quantityOrdered) AS  '#ORDERS',
NVL((quantityOrdered*priceEach),0.0) AS 'Total Sales'
FROM 
employees LEFT JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
LEFT JOIN orders ON customers.customerNumber=orders.customerNumber
LEFT JOIN orderdetails ON orders.orderNumber=orderdetails.orderNumber
WHERE employees.jobTitle = 'Sales Rep'
GROUP BY CONCAT(employees.employeeNumber) ,'#ORDERS'
ORDER BY (quantityOrdered*priceEach)  DESC;





























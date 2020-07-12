SELECT cus.customerName AS CustomerName,
CONCAT(emp.lastName,', ',emp.firstName) AS SalesRep
FROM customers cus JOIN employees emp
ON cus.salesRepemployeenumber=emp.employeenumber;



SELECT MONTHNAME(paymentdate) AS 'MONTH', year(paymentDate) AS 'YEAR', SUM(amount) AS 'Payments Received' FROM payments
GROUP BY MONTH(paymentdate), year(paymentDate);


SELECT ORDERS.STATUS AS 'Order Status', COUNT(*) AS '#of Orders'  FROM orders
group BY ORDERS.STATUS
ORDER BY orders.STATUS;



SELECT COUNT(*) AS total_rows
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id;
/*total_rows = 518*/

SELECT COUNT(*) AS total_rows
FROM orders
LEFT JOIN order_details od ON orders.id = od.order_id
LEFT JOIN customers c ON orders.customer_id = c.id
LEFT JOIN products p ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN employees e ON orders.employee_id = e.employee_id
LEFT JOIN shippers s ON orders.shipper_id = s.id
LEFT JOIN suppliers sup ON p.supplier_id = sup.id;
/*total_rows = 518*/


SELECT COUNT(*) AS total_rows
FROM orders
LEFT JOIN order_details od ON orders.id = od.order_id
RIGHT JOIN customers c ON orders.customer_id = c.id
LEFT JOIN products p ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN employees e ON orders.employee_id = e.employee_id
LEFT JOIN shippers s ON orders.shipper_id = s.id
LEFT JOIN suppliers sup ON p.supplier_id = sup.id;
/*total_rows = 535*/

/*Оберіть тільки ті рядки, де employee_id > 3 та ≤ 10*/
SELECT *
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
WHERE e.employee_id > 3 AND e.employee_id <= 10;

SELECT 
    cat.name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS avg_quantity
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
GROUP BY cat.name;

SELECT 
    cat.name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS avg_quantity
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
GROUP BY cat.name
HAVING AVG(od.quantity) > 21;

SELECT 
    cat.name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS avg_quantity
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
GROUP BY cat.name
HAVING AVG(od.quantity) > 21
ORDER BY row_count DESC;

SELECT 
    cat.name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS avg_quantity
FROM orders
INNER JOIN order_details od ON orders.id = od.order_id
INNER JOIN customers c ON orders.customer_id = c.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN employees e ON orders.employee_id = e.employee_id
INNER JOIN shippers s ON orders.shipper_id = s.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
GROUP BY cat.name
HAVING AVG(od.quantity) > 21
ORDER BY row_count DESC
LIMIT 1, 4;  -- Пропустити перший рядок і взяти наступні чотири


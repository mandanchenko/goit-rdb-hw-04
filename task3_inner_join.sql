use homework3;

SELECT * FROM orders
INNER JOIN 
    order_details od ON orders.id = od.order_id
INNER JOIN 
    customers c ON orders.customer_id = c.id
INNER JOIN 
    products p ON od.product_id = p.id
INNER JOIN 
    categories cat ON p.category_id = cat.id
INNER JOIN 
    employees e ON orders.employee_id = e.employee_id
INNER JOIN 
    shippers s ON orders.shipper_id = s.id
INNER JOIN 
    suppliers sup ON p.supplier_id = sup.id;


UPDATE cliente
SET branch_id = 10
FROM (SELECT * FROM cliente ORDER BY customer_id DESC LIMIT 5) as ultimos
WHERE cliente.customer_id = ultimos.customer_id;
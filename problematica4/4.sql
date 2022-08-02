--Obtener el promedio de créditos otorgado por sucursal

SELECT branch_name, avg(loan_total) AS promedio FROM cliente 
INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
INNER JOIN prestamo ON cliente.customer_id = prestamo.customer_id
GROUP BY branch_name;
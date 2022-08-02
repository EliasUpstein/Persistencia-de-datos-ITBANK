--Obtener la cantidad de tarjetas de crédito por tipo por sucursal

SELECT branch_name, count(type_card) AS credito_count FROM cliente 
INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
INNER JOIN tarjeta ON cliente.customer_id = tarjeta.customer_id
GROUP BY branch_name HAVING type_card = "Crédito";
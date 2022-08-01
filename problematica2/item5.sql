--Actualizar 5 clientes recientemente agregados en la base de datos dado que hubo un error en el JSON que
--traía la información, la sucursal de todos es la 10

UPDATE cliente
SET branch_id = 10
FROM (SELECT * FROM cliente ORDER BY customer_id DESC LIMIT 5) as ultimos
WHERE cliente.customer_id = ultimos.customer_id;
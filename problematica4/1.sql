--Listar la cantidad de clientes por nombre de sucursal ordenando de mayor a menor

--HAY UN PAR DE branch_name QUE SE REPITEN EN LA TABLA
--La diferencia de filas entre las soluciones está dada por este error

--Devuelve filtrando por nombre
SELECT branch_name, count(customer_id) as customer_count 
FROM cliente JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY branch_name ORDER BY customer_count DESC;

--Devuelve filtrando por número
SELECT suc.branch_number, suc.branch_name, count(*) as cant_clientes
FROM sucursal suc INNER JOIN cliente clie on suc.branch_id = clie.branch_id
GROUP by clie.branch_id ORDER BY cant_clientes DESC;
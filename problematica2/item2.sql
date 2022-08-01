--Mostrar las columnas de los clientes, ordenadas por el DNI de menor a mayor y cuya edad sea superior a
--40 años

SELECT 
	*,
	CAST(strftime('%Y', date('now')) AS INTEGER) - CAST(substr(dob, 1, 4) AS INTEGER) as 'Edad'
FROM cliente
WHERE Edad > 40
ORDER BY CAST(customer_DNI AS INTEGER) ASC;
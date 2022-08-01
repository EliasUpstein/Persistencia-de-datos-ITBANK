--Mostrar todos los clientes que se llaman “Anne” o “Tyler” ordenados por edad de menor a mayor

SELECT 
	*,
	CAST(strftime('%Y', date('now')) AS INTEGER) - CAST(substr(dob, 1, 4) AS INTEGER) as 'Edad'
FROM cliente
WHERE customer_name LIKE 'Anne' OR customer_name LIKE 'Tyler'
ORDER BY Edad ASC;
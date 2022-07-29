SELECT customer_name,
	   customer_surname,  
	   cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age,
	   branch_name
FROM cliente, sucursal
WHERE customer_name = "Brendan"
ORDER BY branch_name ASC;
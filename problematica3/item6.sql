--Sexto Item
--Contar la cantidad de clientes menores a 50 años
SELECT count(customer_age) 
FROM (SELECT
		cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age
	  FROM cliente
      WHERE
		customer_age < 50);
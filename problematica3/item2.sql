--Segundo Item
--Seleccionar el nombre, apellido y edad de los clientes que tengan en el apellido la letra Z
SELECT customer_name,
	   customer_surname,  
	   cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age
FROM cliente
WHERE customer_surname like "%Z%";
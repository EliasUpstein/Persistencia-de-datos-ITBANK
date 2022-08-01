--Pendiente solucionar que los numeros esten referenciados al tipo de cliente, para que  
--den resultados validos. Estos valores son meramente visuales y sin proposito.
UPDATE cuenta 
SET account_type = 
CASE account_type%3
	WHEN 0 THEN 
		"Caja en pesos"
	WHEN 1 THEN 
		"Caja en dolares"
	WHEN 2 THEN 
		"Cuenta Corriente"
END;

--intentando con una subconsulta

UPDATE cuenta
	SET account_type = (SELECT clie.customer_name
	FROM cuenta acco INNER JOIN  cliente clie
	ON acco.customer_id = clie.customer_id
	LIMIT 1 OFFSET 0)
WHERE account_id in( SELECT account_id FROM cuenta LIMIT 1 OFFSET 0)

UPDATE cuenta
	SET account_type = (SELECT clie.customer_name
	FROM cuenta acco INNER JOIN  cliente clie
	ON acco.customer_id = clie.customer_id
	LIMIT 1 OFFSET 1)
WHERE account_id in( SELECT account_id FROM cuenta LIMIT 1 OFFSET 1 )



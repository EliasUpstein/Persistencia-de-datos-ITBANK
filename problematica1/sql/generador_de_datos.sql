--datos obtenidos del ejercicio del sprint5
INSERT INTO tipo_cliente (type_name, debit_card, credit_card, current_account, checkbook_amount, box_dollar, box_peso, withdraw_daily_max, transfer_comission, max_travel_reception)
VALUES
("classic", "1", "0", "FALSE", "FALSE", "FALSE", "TRUE", "$10000", "1%", "$150000"),
("gold", "1", "1", "$10000", "1", "TRUE", "TRUE", "$20000", "0,5", "$50000"),
("black", "1", "5", "$10000", "2", "TRUE", "TRUE1", "$100000", "0%", "FALSE");

--Asignando valores parcialemente aleatorios a la columna customer_type_id
UPDATE cliente
SET customer_type_id = 
	CASE customer_DNI%3
		WHEN 0 THEN 3
		WHEN 1 THEN 1
		WHEN 2 THEN 2
	END;
	

--Pendiente solucionar que los numeros esten referenciados al tipo de cliente, para que  
--den resultados validos. Estos valores son meramente visuales y sin proposito.
UPDATE cuenta 
SET account_type = 
CASE customer_id%3
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



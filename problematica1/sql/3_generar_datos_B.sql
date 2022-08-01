--El tipo de cuenta esta referenciada al tipo de cliente, para que den resultados validos.
UPDATE cuenta 
SET account_type = 
CASE 
	WHEN account_type=1 THEN 
		"Caja en pesos"
	WHEN account_type=2 or account_type=3 THEN 
		CASE account_id%3
			WHEN 0 THEN 
				"Caja en pesos"
			WHEN 1 THEN 
				"Caja en dolares"
			WHEN 2 THEN 
				"Cuenta Corriente"
		END
END;
		


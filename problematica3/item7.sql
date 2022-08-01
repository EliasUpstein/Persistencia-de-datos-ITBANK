--Séptimo Item
SELECT * FROM cuenta WHERE (balance/100) > 8000 LIMIT 5;	--Orden de la tabla
SELECT * FROM cuenta WHERE (balance/100) > 8000 ORDER BY balance ASC LIMIT 5;	--Las primeras con menor saldo mayor a 8000

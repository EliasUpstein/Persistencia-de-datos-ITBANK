CREATE VIEW vista AS
SELECT 
	customer_id as 'Id',
	branch_id as 'Nro. Sucursal',
	customer_name as 'Nombre',
	customer_surname as 'Apellido',
	customer_DNI as 'DNI',
	CAST(strftime('%Y', date('now')) AS INTEGER) - CAST(substr(dob, 1, 4) AS INTEGER) as 'Edad'
FROM cliente;
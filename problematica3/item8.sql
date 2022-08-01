--Octavo Item
--Seleccionar los préstamos que tengan fecha en abril, junio y agosto, ordenándolos por importe
SELECT * FROM prestamo 
WHERE 
	substr(loan_date, 6,2) = "04" or 
	substr(loan_date, 6,2) = "06" or
	substr(loan_date, 6,2) = "08"
ORDER BY loan_total ASC;
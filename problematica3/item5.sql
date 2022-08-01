--Quinto Item
--Seleccionar los prestamos cuyo importe sea mayor que el importe medio de todos los prestamos
SELECT * FROM prestamo 
WHERE loan_total > (SELECT avg(loan_total) FROM prestamo);
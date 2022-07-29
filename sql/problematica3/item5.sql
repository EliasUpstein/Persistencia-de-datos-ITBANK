SELECT * FROM prestamo 
WHERE loan_total > (SELECT avg(loan_total) FROM prestamo);
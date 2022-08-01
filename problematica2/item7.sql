--Consultar sobre cuál es el tipo de préstamo de mayor importe

SELECT loan_type, SUM(loan_total) as total
FROM prestamo
GROUP BY loan_type
ORDER BY total DESC LIMIT 1;


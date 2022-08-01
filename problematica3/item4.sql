--Cuarto Item
--SELECT * FROM prestamo WHERE (loan_total/100) > 80000 OR loan_type = "PRENDARIO";
--Divide el importe por 100 para no contar los centavos

SELECT * FROM prestamo WHERE (loan_total/100) > 80000
UNION
SELECT * FROM prestamo WHERE loan_type = "PRENDARIO";
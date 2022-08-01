--Noveno Item
--Obtener el importe total de los prestamos agrupados por tipo de préstamos. Por cada tipo de préstamo de
--la tabla préstamo, calcular la suma de sus importes. Renombrar la columna como loan_total_accu

SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "HIPOTECARIO"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PERSONAL"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PRENDARIO"


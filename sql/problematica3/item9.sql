SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "HIPOTECARIO"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PERSONAL"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PRENDARIO"
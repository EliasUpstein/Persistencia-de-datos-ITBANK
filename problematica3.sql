--Primer Item
SELECT * FROM cuenta WHERE balance < 0; 

--Segundo Item
SELECT customer_name,
	   customer_surname,  
	   cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age
FROM cliente
WHERE customer_surname like "%Z%";

--Tercer Item
SELECT customer_name,
	   customer_surname,  
	   cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age,
	   branch_name
FROM cliente, sucursal
WHERE customer_name = "Brendan"
ORDER BY branch_name ASC;

--Cuarto Item
--SELECT * FROM prestamo WHERE (loan_total/100) > 80000 OR loan_type = "PRENDARIO";
--Divide el importe por 100 para no contar los centavos

SELECT * FROM prestamo WHERE (loan_total/100) > 80000
UNION
SELECT * FROM prestamo WHERE loan_type = "PRENDARIO";

--Quinto Item
SELECT * FROM prestamo 
WHERE loan_total > (SELECT avg(loan_total) FROM prestamo);

--Sexto Item
SELECT count(customer_age) 
FROM (SELECT
		cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob)as int) as customer_age
	  FROM cliente
      WHERE
		customer_age < 50);

--Séptimo Item
SELECT * FROM cuenta WHERE (balance/100) > 8000 LIMIT 5;	--Orden de la tabla
SELECT * FROM cuenta WHERE (balance/100) > 8000 ORDER BY balance ASC LIMIT 5;	--Las primeras con menor saldo mayor a 8000

--Octavo Item
SELECT * FROM prestamo 
WHERE 
	substr(loan_date, 6,2) = "04" or 
	substr(loan_date, 6,2) = "06" or
	substr(loan_date, 6,2) = "08"
ORDER BY loan_total ASC;

--Noveno Item
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "HIPOTECARIO"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PERSONAL"
UNION
SELECT loan_type, sum(loan_total) as loan_total_accu FROM prestamo WHERE loan_type = "PRENDARIO"


--Correccion formatos fecha de la tabla cliente
UPDATE empleado 
SET employee_hire_date = 
substr(employee_hire_date, 7,4)||"-"||substr(employee_hire_date, 4,2)||"-"||substr(employee_hire_date, 1,2);
--Eliminar el registro correspondiente a “Noel David” realizando la selección por el nombre y apellido

DELETE FROM cliente
WHERE customer_name LIKE 'David' AND customer_surname LIKE 'Noel';

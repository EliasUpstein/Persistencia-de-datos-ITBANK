--Mostrar todos los clientes que se llaman “Anne” o “Tyler” ordenados por edad de menor a mayor

SELECT * FROM cliente_edad
WHERE Nombre = 'Anne' OR Nombre = 'Tyler'
ORDER BY Edad ASC;
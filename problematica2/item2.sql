--Mostrar las columnas de los clientes, ordenadas por el DNI de menor a mayor y cuya edad sea superior a
--40 años

SELECT * FROM cliente_edad
WHERE Edad > 40
ORDER BY CAST(DNI AS INTEGER) ASC;
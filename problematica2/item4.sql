--Dado el siguiente JSON. Insertar 5 nuevos clientes en la base de datos y verificar que se haya 
--realizado con éxito la inserción

--Inserción
INSERT INTO cliente(customer_name, customer_surname,customer_DNI,branch_id,dob) 
VALUES("Lois","Stout","47730534",80,"1984-07-07"),
("Hall","Mcconnell","52055464",45,"1968-04-30"),
("Hilel","Mclean","43625213",77,"1993-03-28"),
("Jin","Cooley","21207908",96,"1959-08-24"),
("Gabriel","Harmon","57063950",27,"1976-04-01");

--Verificación
SELECT * FROM cliente WHERE customer_id > 500;
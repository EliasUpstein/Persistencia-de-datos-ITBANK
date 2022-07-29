--Reescribimos y ampliamos las tablas 
--existentes para asignar las claves 
--foraneas faltantes.

--Correcion "Cliente"
--Estructuramos la tabla
IF EXISTS (SELECT * FROM cliente)
BEGIN
	CREATE TABLE "correccion"(
		"customer_id" INTEGER NOT NULL,
		"customer_name"	NVARCHAR(200) NOT NULL,
		"customer_surname"	INTEGER,
		"customer_DNI"	INTEGER NOT NULL,
		"dob" TEXT,
		"customer_type_id"	INTEGER NOT NULL,
		"costumer_address_id"	INTEGER NOT NULL,
		"branch_id"	INTEGER NOT NULL,
		PRIMARY KEY("customer_id" AUTOINCREMENT),
		FOREIGN KEY("customer_type_id") REFERENCES "tipo_cliente"("customer_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION,
		FOREIGN KEY("customer_address_id") REFERENCES "direccion"("address_id") ON DELETE NO ACTION ON UPDATE NO ACTION,
		FOREIGN KEY("branch_id") REFERENCES "sucursal"("branch_id") ON DELETE NO ACTION ON UPDATE NO ACTION
	);
END


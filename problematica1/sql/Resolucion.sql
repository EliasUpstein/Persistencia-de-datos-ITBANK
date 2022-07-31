--Reescribimos y ampliamos las tablas
--Se puede ver el diagrama entidad-relacion que finalmente optamos en el readme.
	
--1ro. Creamos las tablas nuevas sin los campos de las claves foraneas. 
	
	--Tabla marca_tarjeta
	CREATE TABLE "marca_tarjeta"(
		"brand_id" INTEGER NOT NULL,
		"brand_name" TEXT NOT NULL,
		PRIMARY KEY("brand_id" AUTOINCREMENT)
	);
	
	--Tabla tarjeta
	CREATE TABLE "tarjeta"(
		"card_id" INTEGER NOT NULL,
		"number_card" char(200) NOT NULL UNIQUE,
		"cvv" INTEGER NOT NULL,
		"issue_date" TEXT NOT NULL,
		"exp_date" TEXT NOT NULL,
		"type_card" TEXT NOT NULL,
		"customer_id" INTEGER NOT NULL,
		"brand_id"	INTEGER NOT NULL,
		PRIMARY KEY("card_id" AUTOINCREMENT),
		FOREIGN KEY("customer_id") REFERENCES "cliente"("customer_id") ON DELETE NO ACTION ON UPDATE NO ACTION,
		FOREIGN KEY("brand_id") REFERENCES "marca_tarjeta"("brand_id") ON DELETE NO ACTION ON UPDATE NO ACTION
	);
	
	--Tabla tipo_cliente
	CREATE TABLE "tipo_cliente"(
		"customer_type_id" INTEGER NOT NULL,
		"type_name" TEXT NOT NULL UNIQUE,
		"debit_card" TEXT NOT NULL,
		"credit_card" TEXT NOT NULL,
		"current_account" TEXT NOT NULL,
		"checkbook_amount" INTEGER NOT NULL,
		"box_dollar" TEXT,
		"box_peso" TEXT,
		"withdraw_daily_max" INTEGER,
		"transfer_comission" INTEGER,
		"max_travel_reception" INTEGER,
		PRIMARY KEY("customer_type_id" AUTOINCREMENT)
	);
	
	--Tabla direccion
	CREATE TABLE "direccion"(
		"address_id" INTEGER NOT NULL,
		"street" TEXT NOT NULL,
		"number" INTEGER NOT NULL,
		"city" TEXT NOT NULL,
		"province" TEXT NOT NULL,
		"country" TEXT NOT NULL,
		PRIMARY KEY("address_id" AUTOINCREMENT)
	);
	
--2do. Agregamos los campos faltantes en las tablas (siendo claves foraneas
--o campos nuevos).
	
	--Campo nuevo "account_type" en "cuenta"
	ALTER TABLE cuenta ADD COLUMN "account_type" TEXT;

	--"customer_type_id" en "cliente" desde "tipo_cliente"
	ALTER TABLE cliente 
		ADD COLUMN "customer_type_id" INTEGER REFERENCES "tipo_cliente"("customer_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	
	--"customer_address_id" en "cliente" desde "direccion"
	ALTER TABLE cliente 
		ADD COLUMN "customer_address_id" INTEGER REFERENCES "direccion"("address_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	
	--"employee_address_id" en "empleado" desde "direccion"
	ALTER TABLE empleado 
		ADD COLUMN "employee_address_id" INTEGER REFERENCES "direccion"("address_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	
--3ro. Modificamos los campos de las columnas en las tablas iniciales
--para que reciban la restriccion de clave foranea.
--Se debe tener en cuenta que no hay clausulas en sqlite para asignar una restriccion de 
--clave foranea a una columna existente o cambiar el nombre de una columna.

	--La columna "branch_id" en la tabla "cliente" refiere a la tabla "sucursal".
	ALTER TABLE cliente ADD COLUMN "correccion"	INTEGER; --Columna que almacenara los datos iniciales.
	UPDATE cliente SET correccion = branch_id; --Asignamos los datos.
	ALTER TABLE cliente DROP COLUMN branch_id; --Eliminamos la columna original.
	ALTER TABLE cliente --Creamos la columna con la restriccion clave foranea.
		ADD COLUMN "branch_id"	INTEGER REFERENCES "sucursal"("branch_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	UPDATE cliente SET branch_id = correccion; --Le asignamos los datos originales.
	ALTER TABLE cliente DROP COLUMN correccion; --Eliminamos la tabla.
	
	--La columna "customer_id" en la tabla "cuenta" refiere a la tabla "cliente".
	ALTER TABLE cuenta ADD COLUMN "correccion"	INTEGER; --Columna que almacenara los datos iniciales.
	UPDATE cuenta SET correccion = customer_id; --Asignamos los datos.
	ALTER TABLE cuenta DROP COLUMN customer_id; --Eliminamos la columna original.
	ALTER TABLE cuenta --Creamos la columna con la restriccion clave foranea.
		ADD COLUMN "customer_id"INTEGER REFERENCES "cliente"("customer_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	UPDATE cuenta SET customer_id = correccion; --Le asignamos los datos originales.
	ALTER TABLE cuenta DROP COLUMN correccion; --Eliminamos la tabla.
	
	--La columna "customer_id" en la tabla "prestamo" refiere a la tabla "cliente".
	ALTER TABLE prestamo ADD COLUMN "correccion" INTEGER; --Columna que almacenara los datos iniciales.
	UPDATE prestamo SET correccion = customer_id; --Asignamos los datos.
	ALTER TABLE prestamo DROP COLUMN customer_id; --Eliminamos la columna original.
	ALTER TABLE prestamo --Creamos la columna con la restriccion clave foranea.
		ADD COLUMN "customer_id"INTEGER REFERENCES "cliente"("customer_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	UPDATE prestamo SET customer_id = correccion; --Le asignamos los datos originales.
	ALTER TABLE prestamo DROP COLUMN correccion; --Eliminamos la tabla.
	
	--La columna "branch_address_id" en la tabla "sucursal" refiere a la tabla "direccion".
	--Se destaca que se deben insertar valores en la tabla direccion dado que sino
	--al referenciar esa tabla salta un error de referencia por no coincidir al estar vacia.
	
	--Por dicha mencion se crea el siguiente disparador:
	CREATE TRIGGER [IF NOT EXISTS] generar datos 
	BEFORE UPDATE 
	ON sucursal
		BEGIN
	 
		END;

	
	
	ALTER TABLE sucursal ADD COLUMN "correccion" INTEGER; --Columna que almacenara los datos iniciales.
	UPDATE sucursal SET correccion = branch_address_id; --Asignamos los datos.
	ALTER TABLE sucursal DROP COLUMN branch_address_id; --Eliminamos la columna original.
	ALTER TABLE sucursal --Creamos la columna con la restriccion clave foranea.
		ADD COLUMN "branch_address_id"INTEGER REFERENCES "direccion"("address_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	UPDATE sucursal SET branch_address_id = correccion; --Le asignamos los datos originales.
	ALTER TABLE sucursal DROP COLUMN correccion; --Eliminamos la tabla.

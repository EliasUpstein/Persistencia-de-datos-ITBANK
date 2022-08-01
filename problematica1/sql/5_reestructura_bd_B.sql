--La columna "branch_address_id" en la tabla "sucursal" refiere a la tabla "direccion".
	--Se destaca que se deben insertar valores en la tabla direccion dado que sino
	--al referenciar esa tabla salta un error de referencia por no coincidir al estar vacia.
	

	ALTER TABLE sucursal ADD COLUMN "correccion" INTEGER; --Columna que almacenara los datos iniciales.
	UPDATE sucursal SET correccion = branch_address_id; --Asignamos los datos.
	ALTER TABLE sucursal DROP COLUMN branch_address_id; --Eliminamos la columna original.
	ALTER TABLE sucursal --Creamos la columna con la restriccion clave foranea.
		ADD COLUMN "branch_address_id"INTEGER REFERENCES "direccion"("address_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
	UPDATE sucursal SET branch_address_id = correccion; --Le asignamos los datos originales.
	ALTER TABLE sucursal DROP COLUMN correccion; --Eliminamos la tabla.
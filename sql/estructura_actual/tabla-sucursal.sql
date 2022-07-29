CREATE TABLE "sucursal" (
	"branch_id"	INTEGER NOT NULL,
	"branch_number"	BLOB NOT NULL,
	"branch_name"	TEXT NOT NULL,
	"branch_address_id"	INTEGER NOT NULL,
	PRIMARY KEY("branch_id" AUTOINCREMENT)
)
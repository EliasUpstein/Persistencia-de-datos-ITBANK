CREATE TABLE "prestamo" (
	"loan_id"	INTEGER NOT NULL,
	"loan_type"	TEXT NOT NULL,
	"loan_date"	TEXT NOT NULL,
	"loan_total"	INTEGER NOT NULL,
	"customer_id"	INTEGER NOT NULL,
	PRIMARY KEY("loan_id" AUTOINCREMENT),
	FOREIGN KEY("customer_id") REFERENCES "cliente"("customer_id")
)
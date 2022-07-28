CREATE TABLE "cuenta" (
	"account_id"	INTEGER NOT NULL,
	"customer_id"	INTEGER NOT NULL,
	"balance"	INTEGER NOT NULL,
	"iban"	TEXT NOT NULL,
	FOREIGN KEY("customer_id") REFERENCES "cliente"("customer_id"),
	PRIMARY KEY("account_id" AUTOINCREMENT)
)
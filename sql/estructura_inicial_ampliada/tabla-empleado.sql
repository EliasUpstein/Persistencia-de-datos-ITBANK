CREATE TABLE "empleado" (
	"employee_id"	INTEGER NOT NULL,
	"employee_name"	TEXT NOT NULL,
	"employee_surname"	TEXT NOT NULL,
	"employee_hire_date"	TEXT NOT NULL,
	"employee_DNI"	TEXT NOT NULL,
	"branch_id"	INTEGER NOT NULL,
	PRIMARY KEY("employee_id" AUTOINCREMENT)
)
CREATE TABLE tarjeta (
	card_id INTEGER PRIMARY KEY AUTOINCREMENT,
	number TEXT NOT NULL,
	cvv INTEGER NOT NULL CHECK (cvv BETWEEN 0 and 999),
	issue_date TEXT NOT NULL,
	exp_date TEXT NOT NULL,
	card_type_id INTEGER NOT NULL,
	customer_id INTEGER,
	brand_id INTEGER NOT NULL,
	FOREIGN KEY (card_type_id) REFERENCES tipo_tarjeta (card_type_id) 
      ON DELETE CASCADE 
      ON UPDATE NO ACTION
	FOREIGN KEY (customer_id) REFERENCES cliente (customer_id) 
      ON DELETE CASCADE 
      ON UPDATE NO ACTION
	 FOREIGN KEY (brand_id) REFERENCES tipo_tarjeta (brand_id) 
      ON DELETE CASCADE 
      ON UPDATE NO ACTION
)
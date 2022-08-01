--Mediante índices mejorar la performance la búsqueda de clientes por DNI
CREATE UNIQUE INDEX idx_customer_dni ON cliente(customer_DNI);
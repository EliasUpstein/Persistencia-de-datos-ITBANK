--Crear la tabla “movimientos” con los campos de identificación del movimiento, número de cuenta, monto,
--tipo de operación y hora.
--Mediante el uso de transacciones, hacer una transferencia de 1000$ desde la cuenta 200 a la cuenta 400
--Registrar el movimiento en la tabla movimientos
--En caso de no poder realizar la operación de forma completa, realizar un ROLLBACK

--Creación de la tabla
CREATE TABLE movimientos (
    transaction_id INT NOT NULL PRIMARY KEY,
    account_id INT NOT NULL,
    operation_tipe TEXT NOT NULL,
    amount INT NOT NULL,
    changed_at TEXT NOT NULL);

--Transferencia
BEGIN TRANSACTION;

UPDATE cuenta
SET balance = balance - 1000
WHERE account_id = 200;

UPDATE cuenta
SET balance = balance + 1000
WHERE account_id = 400;

COMMIT;

--Registro de la transferencia
INSERT INTO movimientos(account_id,operation_tipe,amount,changed_at) 
VALUES(200,'-',1000,datetime('now'))
VALUES(400,'+',1000,datetime('now'));
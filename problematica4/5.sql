--La información de las cuentas resulta critica para la compañía, por eso es necesario crear una tabla 
--denominada “auditoria_cuenta” para guardar los datos movimientos, con los siguientes campos: 
--old_id, new_id, old_balance, new_balance, old_iban, new_iban, old_type, new_type, user_action, created_at
--Crear un trigger que después de actualizar en la tabla cuentas los campos balance, IBAN o tipo de cuenta
--registre en la tabla auditoria
--Restar $100 a las cuentas 10,11,12,13,14

CREATE TRIGGER log_account_after_update 
AFTER UPDATE on cuenta
WHEN old.balance <> new.balance or
 old.iban <> new.iban or
 old.account_type_id <> new.account_type_id
BEGIN
    INSERT INTO auditoria_cuenta(old_balance, new_balance)
	VALUES(old.balance,new.balance);
END;
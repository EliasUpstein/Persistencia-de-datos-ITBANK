CREATE TRIGGER log_account_after_update 
AFTER UPDATE on cuenta
WHEN old.balance <> new.balance or
 old.iban <> new.iban or
 old.account_type_id <> new.account_type_id
BEGIN
    INSERT INTO auditoria_cuenta(old_balance, new_balance)
	VALUES(old.balance,new.balance);
END;
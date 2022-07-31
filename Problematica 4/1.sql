select sucursal.branch_id, sucursal.branch_name, cliente.customer_id from sucursal
left join cliente on sucursal.branch_id =  cliente.branch_id 
order by customer_id desc
;
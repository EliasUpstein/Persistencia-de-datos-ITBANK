--Obtener la cantidad de empleados por cliente por sucursal en un número real
--sin DISTINCT cada contador devuelve la multiplicacion de los valores  cant de empleado y  cant de cliente por sucursal.
SELECT 
branch_name, 
count(DISTINCT employee_id) as employee_count, 
count(DISTINCT customer_id) as customer_count,
CAST(count(DISTINCT employee_id) as REAL)/count(DISTINCT customer_id) as relacion_empleado_cliente
FROM empleado 
INNER JOIN cliente ON empleado.branch_id = cliente.branch_id
INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY sucursal.branch_name ORDER BY sucursal.branch_name ASC;


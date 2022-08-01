--Obtener la cantidad de empleados por cliente por sucursal en un número real

select sucursal.branch_id,
 count(cliente.customer_id)/count(empleado.employee_id)as relacion_ec from sucursal
join cliente on cliente.branch_id = sucursal.branch_id
join empleado on empleado.employee_id = sucursal.branch_id
group by sucursal.branch_id
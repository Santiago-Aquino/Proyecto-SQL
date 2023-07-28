use ascensores_aquino;

/*
Este es un procedimiento en el cual podemos insertar un registro en la tabla fechas_bonos cada vez que lo usemos.
Nos devuelve todo el registro que se ingresa por parametro con sus respectivas columnas y despues si revisamos la tabla 
fechas_bonos vamos a ver el registro agregado.
*/

drop procedure if exists sp_ins_fecha_bono;
delimiter // 
create procedure sp_ins_fecha_bono (inout p_id_fecha int,
									inout p_fecha_bono date)
begin
	insert into fechas_bonos (id_fecha, fecha_bono)
	values					(p_id_fecha, p_fecha_bono);


end//
delimiter ;


-- Siguiente procedimiento:

/*
Este es un procedimiento donde le pasamos por parametro la primera letra del nombre_receptor y la primera letra de su producto
y nos devuelve para esos parametros la cantidad total de todos los pagos que se le hizo por ese producto.
*/

drop procedure if exists sp_cant_total_producto
delimiter $$
create procedure sp_cant_total_producto (inout p_nombre_receptor varchar(30),
									inout p_producto varchar(30),
									out cantidad_total int)
begin

	select r.nombre_receptor, g.producto, sum(g.cantidad) into p_nombre_receptor, p_producto, cantidad_total from receptores as r join gastos_nuestra_empresa as g 
	on r.id_receptor = g.id_receptor 
    where g.producto like concat(p_producto, '%')
	group by r.nombre_receptor 
	having r.nombre_receptor like concat(p_nombre_receptor, '%');

end$$
delimiter ;
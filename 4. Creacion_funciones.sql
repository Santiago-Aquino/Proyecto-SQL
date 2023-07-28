use ascensores_aquino;

/*
Esta es una funcion en la cual le pasamos por parametro un nombre similar o que contenga de la tabla clientes 
y hace un conteo de cuantos se parecen a ese nombre que le pasemos por parametro.
*/

drop function if exists fn_count_clientes;
delimiter // 
create function fn_count_clientes (p_nombre varchar(30))
returns int
deterministic
return (select count(*) from clientes where nombre_cliente like concat('%',p_nombre,'%'));
//
delimiter ;


/*
Esta es una funcion en la cual se le da una fecha de algun gasto de nuestra empresa hacia a un receptor por parametro y 
te retorna el nombre del receptor al cual le hicimos ese pago en esa fecha que pasamos.
*/

drop function if exists fn_receptor_fecha_gasto;
delimiter //
create function fn_receptor_fecha_gasto (p_fecha_gasto date)
returns varchar(30)
deterministic
begin
	declare nombre varchar(30);
    set nombre =
		(select nombre_receptor from receptores as r join gastos_nuestra_empresa as g 
		on r.id_receptor = g.id_receptor 
		join fechas_gastos as f on g.id_fecha = f.id_fecha
		where f.fecha_gasto = p_fecha_gasto);
	return nombre;

end//
delimiter ;
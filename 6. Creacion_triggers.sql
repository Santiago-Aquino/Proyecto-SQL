use ascensores_aquino;

drop table if exists movimientos;
create table if not exists movimientos(
id_mov int auto_increment primary key,
accion varchar(50),
nombre_tabla varchar(30),
usuario varchar(100),
fecha_accion date,
horario_accion time
);

drop table if exists movimientos_2;
create table if not exists movimientos_2(
id_mov_2 int auto_increment primary key,
id_tabla int,
campo_anterior varchar(100),
campo_nuevo varchar(100),
accion varchar(50),
nombre_tabla varchar(30),
usuario varchar(100),
fecha_accion date,
horario_accion time
);

-- PRIMER TRIGGER:

/*
Este es un trigger que me avisa despues de que se haga un insert en la tabla pagos_arreglos
y lleva informacion de quien lo hizo, su fecha, etc hacia la tabla movimientos.
*/

drop trigger if exists trg_mov_arreglos;
delimiter //
create trigger trg_mov_arreglos after insert on ascensores_aquino.pagos_arreglos
for each row
begin
	insert into movimientos (accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					('insert', 'pagos_arreglos', current_user(), curdate(), curtime());

end//
delimiter ;

-- SIGUIENTE TRIGGER 2:

/*
Este es un trigger que advierte antes si se modifica el precio de la tabla pagos_arreglos 
y lleva la informacion de cual id (de pagos_arreglos) fue modificado, el precio anterior, el precio nuevo, etc 
hacia la tabla movimientos_2.
*/

drop trigger if exists trg_mov2_arreglos;
delimiter //
create trigger trg_mov2_arreglos before update on ascensores_aquino.pagos_arreglos
for each row
begin
	insert into movimientos_2 (id_tabla, campo_anterior, campo_nuevo, accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					(new.id_pago_arreglo, concat('El precio anterior era: ', old.precios), 
							concat('El precio nuevo es: ', new.precios), 'update', 'pagos_arreglos', current_user(), curdate(), curtime());

end//
delimiter ;

-- SIGUIENTE TRIGGER 3:

/*
Este es un trigger que avisa antes de que se haga una eliminacion de la tabla pagos_bonos 
e inserta con toda la informacion de la eliminacion en la tabla movimientos.
*/

drop trigger if exists trg_mov_bonos;
delimiter $$
create trigger trg_mov_bonos before delete on ascensores_aquino.pagos_bonos
for each row
begin
	insert into movimientos (accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					('delete', 'pagos_bonos', current_user(), curdate(), curtime());

end$$
delimiter ;

-- SIGUIENTE TRIGGER 4:

/*
Este es un trigger que despues de que alguien haga una actualizacion de precio en la tabla pagos_bonos,
nos inserta toda la informacion de quien lo hizo, que id (de pagos_bonos) se modifico, etc en la tabla
movimientos_2.
*/

drop trigger if exists trg_mov2_bonos;
delimiter $$
create trigger trg_mov2_bonos after update on ascensores_aquino.pagos_bonos
for each row
begin
	insert into movimientos_2 (id_tabla, campo_anterior, campo_nuevo, accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					(new.id_pago_bono, concat('El precio anterior era: ', old.precio), 
							concat('El precio nuevo es: ', new.precio), 'update', 'pagos_bonos', current_user(), curdate(), curtime());

end$$
delimiter ;
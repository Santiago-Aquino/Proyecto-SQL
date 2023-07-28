use ascensores_aquino;

select @@autocommit;
set @@autocommit = 0;

-- PRIMERA TABLA:

start transaction;
delete from pagos_arreglos
where id_pago_arreglo = 15;
-- rollback;
-- commit;

-- SEGUNDA TABLA:

start transaction;
insert into pagos_bonos (id_pago_bono, precio, nombre_cliente, id_cliente, id_fecha, descripcion)
values					(16, 7500, 'Libertador', 18, 17, 'Este es un pago de un cliente por el bono mensual'),
						(17, 17500, 'Obligado 1808', 23, 17, 'Este es un pago de un cliente por el bono mensual'),
                        (18, 2300, 'Obligado 2561', 24, 18, 'Este es un pago de un cliente por el bono mensual'),
                        (19, 7000, 'Obligado 2539', 25, 16, 'Este es un pago de un cliente por el bono mensual');
savepoint sp1;
insert into pagos_bonos (id_pago_bono, precio, nombre_cliente, id_cliente, id_fecha, descripcion)
values                  (20, 40000, 'Arribeños', 4, 16, 'Este es un pago de un cliente por el bono mensual'),
                        (21, 7500, 'Balbin', 5, 17, 'Este es un pago de un cliente por el bono mensual'),
                        (22, 7800, 'Billinghurts', 6, 16, 'Este es un pago de un cliente por el bono mensual'),
                        (23, 8900, 'Fondo de la legua', 8, 18, 'Este es un pago de un cliente por el bono mensual');
savepoint sp2;
-- rollback to sp1;
-- release savepoint sp1;
-- commit;                        
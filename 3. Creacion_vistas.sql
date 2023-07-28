use ascensores_aquino;

-- Esta vista nos muestra toda la tabla clientes.

create or replace view vw_clientes as
(select * from clientes)
;

-- Esta vista nos muestra el join entre dos tablas, que trae toda la tabla pagos_bonos
-- solo la columna fecha_bono de la tabla fechas_bonos.

create or replace view vw_pagos_bonos_fechas as
(select p.*, f.fecha_bono from pagos_bonos as p join fechas_bonos as f on p.id_fecha = f.id_fecha)
;

-- Esta vista nos muestra los nombres de los clientes donde el precio en pagos_bonos sea 15000.

create or replace view vw_clientes_pagos_bonos as
select nombre_cliente from clientes where id_cliente in 
(select id_cliente from pagos_bonos where precio = 15000)
;

-- Esta vista nos muestra la tabla pagos_bonos mas una columna que se le suma al precio el iva (0.21).

create or replace view vw_iva_clientes as
(select pagos_bonos.*, precio * 0.21 as suma_de_iva from pagos_bonos)
;

-- Esta vista nos muestra un conteo(de cada id de gastos_nuestra_empresa) 
-- donde la columna cantidad (en la tabla gastos_nuestra_empresa) sea mayor a 10000.

create or replace view vw_gasto_empresa_mayores as
(select count(id_gasto_empresa) as mayores_a_10000 from gastos_nuestra_empresa where cantidad > 10000)
;
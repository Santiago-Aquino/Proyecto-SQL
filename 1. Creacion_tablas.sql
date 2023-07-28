drop database if exists ascensores_aquino;
create database if not exists ascensores_aquino;
use ascensores_aquino;

drop table if exists clientes;
create table if not exists clientes(
	id_cliente int not null auto_increment primary key,
    nombre_cliente varchar(30) not null,
    direccion varchar(30) not null,
    cuil varchar(30) not null,
    telefono int not null,
    descripcion char(120) 
);

drop table if exists receptores;
create table if not exists receptores(
id_receptor int not null auto_increment,
nombre_receptor varchar(30) not null,
numero_receptor int not null,
descripcion char(255),
primary key (id_receptor)
);

drop table if exists fechas_bonos;
create table if not exists fechas_bonos(
	id_fecha int not null auto_increment primary key,
    fecha_bono date not null
);

drop table if exists fechas_arreglos;
create table if not exists fechas_arreglos(
	id_fecha int not null auto_increment primary key,
    fecha_arreglo date not null
);

drop table if exists fechas_gastos;
create table if not exists fechas_gastos(
	id_fecha int not null auto_increment primary key,
    fecha_gasto date not null
);

drop table if exists pagos_bonos;
create table if not exists pagos_bonos(
	id_pago_bono int not null auto_increment primary key,
	precio int not null,
	nombre_cliente varchar(30) not null,
    id_cliente int not null,
	id_fecha int not null,
	descripcion char(120),
	constraint fk_bonos_clientes foreign key (id_cliente) references clientes (id_cliente),
	constraint fk_bonos_fechas foreign key (id_fecha) references fechas_bonos (id_fecha)
);

drop table if exists pagos_arreglos;
create table if not exists pagos_arreglos(
	id_pago_arreglo int not null auto_increment primary key,
    precios int not null,
    tipo_de_arreglo varchar(40) not null,
    nombre_cliente varchar(30) not null,
    id_cliente int not null,
    id_fecha int not null,
    descripcion char(120), 
    constraint fk_arreglos_clientes foreign key (id_cliente) references clientes (id_cliente),
    constraint fk_arreglos_fechas foreign key (id_fecha) references fechas_arreglos (id_fecha)
);

drop table if exists gastos_nuestra_empresa;
create table if not exists gastos_nuestra_empresa(
	id_gasto_empresa int not null auto_increment primary key,
    id_fecha int not null,
    id_receptor int not null,
    producto varchar(30) not null,
    cantidad varchar(30) not null,
    constraint fk_gastos_empresa foreign key (id_fecha) references fechas_gastos (id_fecha),
    constraint fk_gastos_receptor foreign key (id_receptor) references receptores (id_receptor)
);
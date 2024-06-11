drop database if exists taller;

/* Creando y usando la base de datos taller*/

create database taller;

use taller;

/* creando la tabla pais*/

create table pais(
	id_pais int primary key not null auto_increment,
    nombre_pais varchar(70) not null
);

/* creando la tabla telefono*/

create table telefono(
	id_telefono int primary key not null auto_increment,
    num_telefono bigint unique not null ,
    tipo_telefono varchar(20) not null,
    prefijo char(4)
);

/* creando la tabla clientes*/

create table clientes(
	id_cliente int primary key not null auto_increment,
    nombre_cliente varchar(70) not null,
    apellido_cliente varchar(70) not null,
    direccion_cliente varchar(100) not null,
    email_cliente varchar(100) not null,
    id_telefono int not null,
    id_pais int not null,
    foreign key(id_telefono) references telefono(id_telefono),
    foreign key(id_pais) references pais(id_pais)
);

/* creando la tabla empleados*/

create table empleados(
	id_empleado int primary key not null auto_increment,
    nombre_empleado varchar(70) not null,
    apellido_empleado varchar(70) not null,
    cargo varchar(75) not null,
    id_telefono int not null,
    id_pais int not null,
    foreign key(id_telefono) references telefono(id_telefono),
    foreign key(id_pais) references pais(id_pais) 
);

/* creando la tabla proveedores*/

create table proveedores(
	id_proveedor int primary key not null auto_increment,
    nombre_proveedor varchar(70) not null,
    contacto_proveedor varchar(70) not null,
    email_proveedor varchar(100) not null,
    id_telefono int not null,
    id_pais int not null,
    foreign key(id_telefono) references telefono(id_telefono),
    foreign key(id_pais) references pais(id_pais)
);

/* creando la tabla ordenes_compra*/

create table ordenes_compra(
	id_orden int primary key not null auto_increment,
    fecha date not null,
    total decimal(19,2) default(0.00),
    id_empleado int not null,
    id_proveedor int not null,
    foreign key(id_empleado) references empleados(id_empleado),
    foreign key(id_proveedor) references proveedores(id_proveedor)
);

/* creando la tabla piezas*/

create table piezas(
	id_piezas int primary key not null auto_increment,
    nombre_piezas varchar(70) not null,
    descripcion_piezas text null,
    id_proveedor int not null,
    foreign key(id_proveedor) references proveedores(id_proveedor)
);

/* creando la tabla ordenes_detalles*/

create table ordenes_detalles(
	id_ordendetalle int primary key not null auto_increment,
    cantidad_detalle int not null,
    precio_detalle decimal(19,2) not null,
    id_orden int not null,
    id_piezas int not null,
    foreign key(id_orden) references ordenes_compra(id_orden),
    foreign key(id_piezas) references piezas(id_piezas)
);

/* creando la tabla inventarios*/

create table inventarios(
	id_inventario int primary key not null auto_increment,
    cantidad_inventario int not null,
    ubicacion_inventario varchar(80) not null,
    id_piezas int not null,
    foreign key(id_piezas) references piezas(id_piezas)
);

/* creando la tabla vehiculos*/

create table vehiculos(
	id_vehiculo int primary key not null auto_increment,
    placa varchar(10) not null,
    marca varchar(45) not null,
    modelo varchar(100) not null,
    año date not null,
    kilometraje bigint not null,
    id_cliente int not null,
    foreign key(id_cliente) references clientes(id_cliente)
);

/* creando la tabla reparaciones*/

create table reparaciones(
	id_reparacion int primary key not null auto_increment,
    fecha_entrega date not null,
    fecha_salida date not null,
    descripcion_reparacion text,
    costo_reparacion decimal(19,2) not null,
    id_vehiculo int not null,
    foreign key(id_vehiculo) references vehiculos(id_vehiculo)
);

/* creando la tabla piezas_reparaciones*/

create table  piezas_reparaciones(
	id_piezas int not null,
    id_reparacion int not null,
    cantidad int not null,
    foreign key(id_piezas) references piezas(id_piezas),
    foreign key(id_reparacion) references reparaciones(id_reparacion)
);

/* creando la tabla servicios*/

create table servicios(
	id_servicio int primary key not null auto_increment,
    nombre_servicio varchar(70) not null,
    descripcion_servicio text not null,
    costo_servicio decimal(19,2)
);


/* creando la tabla servicio_reparaciones*/

create table servicio_reparaciones(
	id_servicio int not null,
    id_reparacion int not null,
    id_cliente int not null,
    id_empleado int not null,
    id_piezas int not null,
    foreign key(id_servicio) references servicios(id_servicio),
    foreign key(id_reparacion) references reparaciones(id_reparacion),
    foreign key(id_cliente) references clientes(id_cliente),
    foreign key(id_empleado) references empleados(id_empleado),
    foreign key(id_piezas) references piezas(id_piezas)
);
/* creando la tabla citas*/

create table citas(
	id_cita int primary key not null auto_increment,
    fecha_cita date not null,
    hora_cita time not null,
    id_servicio int not null,
    id_cliente int not null,
    id_vehiculo int not null,
    foreign key(id_servicio) references servicios(id_servicio),
    foreign key(id_cliente) references clientes(id_cliente),
    foreign key(id_vehiculo) references vehiculos(id_vehiculo)
);

/* creando la tabla facturacion*/

create table facturacion(
	id_factura int primary key not null auto_increment,
    fecha date not null,
    total decimal(19,2) default(0.00),
    id_cliente int not null,
    foreign key(id_cliente) references clientes(id_cliente)
);

/* creando la tabla factura_detalles*/

create table factura_detalles(
	id_facturadetalle int primary key not null auto_increment,
    cantidad_facturadetalle int not null,
    precio_facturadetalle decimal(19,2) not null,
    id_reparacion int not null,
    id_factura int not null,
    foreign key(id_reparacion) references reparaciones(id_reparacion),
    foreign key(id_factura) references facturacion(id_factura)
);

/* creando la tabla region*/

create table region(
	id_region int primary key not null auto_increment,
    nombre_region varchar(70) not null,
    id_pais int not null,
    foreign key(id_pais) references pais(id_pais)
);

/* creando la tabla ciudad*/

create table ciudad(
	id_ciudad int primary key not null auto_increment,
    nombre_ciudad varchar(70) not null,
    id_region int not null,
    foreign key(id_region) references region(id_region)
);


/* Inserciones a la base de datos taller*/

use taller;

/* Insertando datos a la tabla pais*/

INSERT INTO pais (nombre_pais) VALUES ('Estados Unidos');
INSERT INTO pais (nombre_pais) VALUES ('Mexico');
INSERT INTO pais (nombre_pais) VALUES ('Filipinas');
INSERT INTO pais (nombre_pais) VALUES ('Brasil');
INSERT INTO pais (nombre_pais) VALUES ('Argentina');
INSERT INTO pais (nombre_pais) VALUES ('Colombia');
INSERT INTO pais (nombre_pais) VALUES ('España');
INSERT INTO pais (nombre_pais) VALUES ('Francia');
INSERT INTO pais (nombre_pais) VALUES ('Alemania');
INSERT INTO pais (nombre_pais) VALUES ('Japón');

/* insertando datos a la tabla telefono*/

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1111111111, 'Celular', '+1'); -- Estados Unidos
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2222222222, 'Fijo', '+1');	  -- Estados Unidos
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3333333333, 'Celular', '+1'); -- Estados Unidos

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (4444444444, 'Celular', '+52'); -- Mexico 
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (5555555555, 'Fijo', '+52');    -- Mexico 
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (6666666666, 'Celular', '+52'); -- Mexico 

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (7777777777, 'Celular', '+63'); -- Filipinas
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (8888888888, 'Fijo', '+63');	   -- Filipinas
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (9999999999, 'Celular', '+63'); -- Filipinas

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1010101010, 'Celular', '+55'); -- Brasil
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2020202020, 'Fijo', '+55');	   -- Brasil
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3030303030, 'Celular', '+55'); -- Brasil

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (4040404040, 'Celular', '+54'); -- Argentina
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (5050505050, 'Fijo', '+54');    -- Argentina
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (6060606060, 'Celular', '+54'); -- Argentina

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (7070707070, 'Celular', '+49'); -- Alemania
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (8080808080, 'Fijo', '+49');    -- Alemania
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (9090909090, 'Celular', '+49'); -- Alemania

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1010101011, 'Celular', '+57'); -- Colombia
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2020202022, 'Fijo', '+57');    -- Colombia
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3030303033, 'Celular', '+57'); -- Colombia

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1010101012, 'Celular', '+34'); -- España 
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2020202023, 'Fijo', '+34');    -- España
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3030303034, 'Celular', '+34'); -- España

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1010101013, 'Celular', '+81'); -- Japon
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2020202024, 'Fijo', '+81');    -- Japon
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3030303035, 'Celular', '+81'); -- Japon

INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (1010101014, 'Celular', '+33'); -- Francia
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (2020202025, 'Fijo', '+33');    -- Francia
INSERT INTO telefono (num_telefono, tipo_telefono, prefijo) VALUES (3030303036, 'Celular', '+33'); -- Francia


/* insertando datos a la tabla clientes*/

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, email_cliente, id_telefono, id_pais)
VALUES
  ('Juan', 'Pérez', 'Calle 123 # 45-67', 'juan.perez@email.com', 30, 8),
  ('María', 'Gómez', 'Avenida 78 # 90-12', 'maria.gomez@email.com', 27, 10),
  ('Pedro', 'Rodríguez', 'Carrera 56 # 34-56', 'pedro.rodriguez@email.com', 22, 7),
  ('Ana', 'López', 'Diagonal 34 # 78-90', 'ana.lopez@email.com', 15, 5),
  ('Carlos', 'Ramírez', 'Transversal 12 # 56-78', 'carlos.ramirez@email.com', 17, 9),
  ('Isabel', 'García', 'Manzana 34 Bloque 56 Apto 78', 'isabel.garcia@email.com', 12, 4),
  ('Diego', 'Martínez', 'Barrio 12 Calle 34 # 56', 'diego.martinez@email.com', 4, 2),
  ('Patricia', 'Sánchez', 'Urbanización 78 Sector 90 Casa 12', 'patricia.sanchez@email.com', 7, 3),
  ('Roberto', 'Flores', 'Conjunto Residencial 56 Torre 34 Apto 78', 'roberto.flores@email.com', 1, 1),
  ('Laura', 'Álvarez', 'Edificio 12 Piso 34 Departamento 56', 'laura.alvarez@email.com', 21, 6);

/* insertando datos en la tabla empleados*/

INSERT INTO empleados (nombre_empleado, apellido_empleado, cargo, id_telefono, id_pais)
VALUES
  ('Sebastian', 'Garcia', 'Mecanica automotriz', 13, 5),
  ('Matias', 'Gomez', 'Electricista automotriz', 16, 9),
  ('Isabella', 'Alvarado', 'Latonera y pintor automotriz', 10, 4),
  ('Diego', 'Perez', 'Especialista en diagnostico', 6, 2),
  ('Daniela', 'Barajas', 'Asesora de servicios', 8, 3),
  ('Juan', 'Carlos', 'Auxiliar de taller', 2, 1),
  ('Laura', 'Martinez', 'Contadora', 20, 6),
  ('Camilo', 'Garcia', 'Jefe de taller', 29, 8),
  ('María', 'Sanchez', 'Recepcionista', 26, 10),
  ('Pedro', 'Rodríguez', 'Vendedor de repuestos', 23, 7);


/* insertando datos a la tabla proveedores*/

INSERT INTO proveedores (nombre_proveedor, contacto_proveedor, email_proveedor, id_telefono, id_pais) VALUES
('Autopiezas Directo', 'Roberto Gómez', 'info@autopiezasdirecto.com', 14, 5),
('Autolux', 'María Martínez', 'ventas@autolux.com', 18, 9),
('Motorparts', 'Pedro López', 'pedro@motorparts.com', 11, 4),
('TalleresExpress', 'Ana Rodríguez', 'ana@tallersexpress.com', 3, 1),
('Autorepuestos Rápidos', 'Luis García', 'luis@autorepuestosrapidos.com', 9, 3),
('Autotec', 'Carlos Sánchez', 'ventas@autotec.com', 28, 8),
('Automotriz S.A.', 'Laura Fernández', 'laura@automotrizsa.com', 25, 10),
('Autoservicio Mecánico', 'Javier Ruiz', 'javier@autoserviciomecanico.com', 24, 7),
('Repuestos del Motor', 'Sofía Díaz', 'ventas@repuestosdelmotor.com', 5, 2),
('Mecánica Total', 'Miguel Torres', 'miguel@mecanicatotal.com', 19, 6);

/* insertando datos a la tabla ordenes_compra */

INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-01', 10, 8);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-02',  5, 5);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-03',  8, 7);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-04',  2, 1);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-05',  4, 9);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-06',  1, 4);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-07',  9, 10);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-08',  6, 3);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-09',  3, 2);
INSERT INTO ordenes_compra (fecha, id_empleado, id_proveedor) VALUES ('2024-06-10',  7, 6);

/* insertando datos a la tabla piezas */

INSERT INTO piezas (nombre_piezas, descripcion_piezas, id_proveedor) 
VALUES 
    ('Filtro de Aceite', 'Filtro de aceite estándar para motores de gasolina y diésel.', 2),
    ('Pastillas de Freno Delanteras', 'Pastillas de freno de cerámica de alta calidad para uso en frenos delanteros.', 3),
    ('Amortiguadores Traseros', 'Amortiguadores traseros de gas de 16 pulgadas para vehículos deportivos.', 5),
    ('Batería de Arranque', 'Batería de arranque de 12V y 600A para motores de gasolina.', 4),
    ('Aceite de Motor Sintético', 'Aceite de motor completamente sintético para motores de alto rendimiento.', 6),
    ('Filtro de Aire de Alto Flujo', 'Filtro de aire de alto flujo para mejorar la eficiencia del motor.', 10),
    ('Bujías de Encendido', 'Juego de 4 bujías de platino para motores de gasolina.', 8),
    ('Llantas de Aleación', 'Llantas de aleación de 17 pulgadas para mejorar el rendimiento y la apariencia.', 9),
    ('Kit de Correa de Distribución', 'Kit completo de correa de distribución y tensor para motores de 4 cilindros.', 1),
    ('Bombilla de Faro Halógeno', 'Bombilla de faro halógeno de 55W para luces delanteras de vehículos.', 7);


/* insertando datos a la tabla ordenes_detalles */ 

INSERT INTO ordenes_detalles (cantidad_detalle, precio_detalle, id_orden, id_piezas) 
VALUES 
    (50, 15.99, 1, 1),
    (30, 39.99, 2, 2),
    (40, 89.99, 3, 3),
    (25, 99.99, 4, 4),
    (60, 29.99, 5, 5),
    (35, 349.93, 6, 6),
    (45, 119.94, 7, 7),
    (20, 1199.92, 8, 8),
    (55, 259.98, 9, 9),
    (70, 99.90, 10, 10);

/* insertando datos a la tabla inventarios */

INSERT INTO inventarios (cantidad_inventario, ubicacion_inventario, id_piezas) 
VALUES 
    (50, 'Almacén A1', 1),
    (30, 'Almacén B2', 2),
    (40, 'Almacén C3', 3),
    (25, 'Almacén D4', 4),
    (60, 'Almacén E5', 5),
    (35, 'Almacén F6', 6),
    (45, 'Almacén G7', 7),
    (20, 'Almacén H8', 8),
    (55, 'Almacén I9', 9),
    (70, 'Almacén J10', 10);


/* insertando datos a la tabla reparaciones */

INSERT INTO reparaciones (fecha_reparacion, descripcion_reparacion) 
VALUES 
    ('2024-05-01', 'Cambio de aceite y filtro'),
    ('2024-05-03', 'Reparación de frenos'),
    ('2024-05-05', 'Reparacion de frenos'),
    ('2024-05-07', 'Alineación y balanceo'),
    ('2024-05-10', 'Reemplazo de batería'),
    ('2024-05-12', 'Reparación del sistema de escape'),
    ('2024-05-15', 'Mantenimiento del aire acondicionado'),
    ('2024-05-17', 'Reparación de la transmisión'),
    ('2024-05-20', 'Reemplazo de pastillas de freno'),
    ('2024-05-22', 'Reparación de la suspensión');


/* insertando datos a la tabla piezas_reparaciones */

INSERT INTO piezas_reparaciones (id_piezas, id_reparacion, cantidad) VALUES 
    (1, 1, 1),  -- Aceite para cambio de aceite y filtro
    (2, 1, 1),  -- Filtro de aceite
    (3, 2, 4),  -- Pastillas de freno para reparación de frenos
    (4, 3, 1),  -- Correa de distribución
    (5, 4, 2),  -- Pesas de balanceo para alineación y balanceo
    (6, 5, 1),  -- Batería nueva
    (7, 6, 1),  -- Silenciador para reparación del sistema de escape
    (8, 7, 1),  -- Compresor para mantenimiento del aire acondicionado
    (9, 8, 1),  -- Fluido de transmisión para reparación de la transmisión
    (3, 9, 4);  -- Nuevas pastillas de freno para reemplazo de pastillas de freno


/* insertando datos a la tabla vehiculos */

INSERT INTO vehiculos (placa, marca, modelo, año, id_cliente) VALUES 
    ('ABC123', 'Toyota', 'Corolla', '2020-01-01', 1),
    ('DEF456', 'Honda', 'Civic', '2019-05-15', 2),
    ('GHI789', 'Ford', 'Focus', '2018-07-30', 3),
    ('JKL012', 'Chevrolet', 'Malibu', '2021-03-22', 4),
    ('MNO345', 'Nissan', 'Altima', '2017-11-18', 5),
    ('PQR678', 'Hyundai', 'Elantra', '2016-09-05', 6),
    ('STU901', 'Volkswagen', 'Jetta', '2015-06-27', 7),
    ('VWX234', 'Kia', 'Optima', '2022-02-10', 8),
    ('YZA567', 'Subaru', 'Impreza', '2014-12-13', 9),
    ('BCD890', 'Mazda', '3', '2013-08-19', 10);


/* insertando datos a la tabla servicios */

INSERT INTO servicios (nombre_servicio, descripcion_servicio, costo_servicio) VALUES 
    ('Cambio de Aceite', 'Cambio de aceite y filtro del motor.', 50.00),
    ('Alineación y Balanceo', 'Alineación y balanceo de las ruedas del vehículo.', 75.00),
    ('Revisión de Frenos', 'Inspección y ajuste de los frenos del vehículo.', 60.00),
    ('Cambio de Batería', 'Sustitución de la batería del vehículo.', 120.00),
    ('Revisión de Suspensión', 'Inspección y ajuste del sistema de suspensión.', 80.00),
    ('Diagnóstico Electrónico', 'Revisión y diagnóstico del sistema electrónico del vehículo.', 90.00),
    ('Cambio de Neumáticos', 'Sustitución de neumáticos desgastados.', 200.00),
    ('Mantenimiento de Climatización', 'Revisión y carga del sistema de aire acondicionado.', 65.00),
    ('Cambio de Filtros', 'Cambio de filtros de aire y habitáculo.', 40.00),
    ('Servicio de Luces', 'Revisión y ajuste del sistema de iluminación del vehículo.', 30.00);

/* insertando datos a la tabla servicio_reparaciones*/

INSERT INTO servicio_reparaciones (id_servicio, id_reparacion, id_cliente, id_empleado, id_piezas, fecha, observacion, cantidad, costo) VALUES 
(1, 1, 1, 1, 1, '2024-05-15', 'Cambio de aceite realizado exitosamente.', 1, 50.00),
(2, 2, 2, 1, 2, '2024-05-16', 'Alineación y balanceo completados.', 1, 75.00),
(3, 3, 3, 1, 3, '2024-05-17', 'Revisión de frenos efectuada.', 1, 60.00),
(4, 4, 4, 2, 4, '2024-05-18', 'Batería reemplazada correctamente.', 1, 120.00),
(5, 5, 5, 1, 5, '2024-05-19', 'Suspensión revisada y ajustada.', 1, 80.00),
(6, 6, 6, 5, 6, '2024-05-20', 'Diagnóstico electrónico completado.', 1, 90.00),
(7, 7, 7, 1, 7, '2024-05-21', 'Neumáticos cambiados.', 4, 200.00),
(8, 8, 8, 4, 8, '2024-05-22', 'Climatización revisada y cargada.', 1, 65.00),
(9, 9, 9, 9, 9, '2024-05-23', 'Filtros cambiados.', 2, 40.00),
(10, 10, 2, 10, 10, '2024-05-24', 'Sistema de luces revisado y ajustado.', 1, 30.00);

/* insertando datos a la tabla citas */

INSERT INTO citas (fecha_cita, hora_cita, id_servicio, id_cliente, id_vehiculo) VALUES 
('2024-06-10', '09:00:00', 1, 1, 1),
('2024-06-11', '10:30:00', 2, 2, 2),
('2024-06-12', '11:00:00', 3, 3, 3),
('2024-06-13', '08:30:00', 4, 4, 4),
('2024-06-14', '13:00:00', 5, 5, 5),
('2024-06-15', '14:30:00', 6, 6, 6),
('2024-06-16', '15:00:00', 7, 7, 7),
('2024-06-17', '09:30:00', 8, 8, 8),
('2024-06-18', '10:00:00', 9, 9, 9),
('2024-06-19', '11:30:00', 10, 10, 10);


/* insertando datos a la tabla facturacion */

INSERT INTO facturacion (fecha, id_cliente) VALUES
('2024-06-01', 1),
('2024-06-02', 2),
('2024-06-03', 3),
('2024-06-04', 4),
('2024-06-05', 5),
('2024-06-06', 6),
('2024-06-07', 7),
('2024-06-08', 8),
('2024-06-09', 9),
('2024-06-10', 10);


/* insertando datos a la tabla factura_detalles */

INSERT INTO factura_detalles (cantidad_facturadetalle, precio_facturadetalle, id_reparacion, id_factura) VALUES
(2, 125.00, 1, 1),
(1, 325.50, 2, 2),
(3, 150.00, 3, 3),
(1, 150.25, 4, 4),
(5, 115.00, 5, 5),
(2, 145.00, 6, 6),
(4, 152.50, 7, 7),
(1, 410.50, 8, 8),
(3, 241.67, 9, 9),
(2, 182.63, 10, 10);


/* insertando datos a la tabla region */

INSERT INTO region (nombre_region, id_pais) VALUES
('Region Noreste', 1),  -- Asociada a Estados Unidos
('Region Oriente', 2),  -- Asociada a México
('Luzon', 3),  -- Asociada a Filipinas
('Brasil Central', 4),  -- Asociada a Brasil
('Region de las pampas', 5),  -- Asociada a Argentina
('Region Caribe', 6),  -- Asociada a Colombia
('Andalucia', 7),  -- Asociada a España
('Auvergne-Rhône-Alpes', 8),  -- Asociada a Francia
('Berlin', 9),  -- Asociada a Alemania
('Tokyo', 10);  -- Asociada a Japón


/* insertando datos a la tabla ciudad */

INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('New York City', 1);  -- Asociada a Northeast Region (Estados Unidos)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Los Angeles', 1);  -- Asociada a West Coast Region (Estados Unidos)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Mexico City', 2);  -- Asociada a North Region (México)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Manila', 3);  -- Asociada a Central Luzon (Filipinas)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('São Paulo', 4);  -- Asociada a São Paulo (Brasil)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Buenos Aires', 5);  -- Asociada a Buenos Aires (Argentina)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Bogotá', 6);  -- Asociada a Bogotá (Colombia)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Madrid', 7);  -- Asociada a Madrid (España)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Paris', 8);  -- Asociada a Île-de-France (Francia)
INSERT INTO ciudad (nombre_ciudad, id_region) VALUES ('Tokyo', 10);  -- Asociada a Tokyo (Japón)


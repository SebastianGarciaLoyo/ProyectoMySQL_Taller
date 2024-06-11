# ProyectoMySQL_Taller

-- Modelo Relacional



## Consultas



1. Obtener el historial de reparaciones de un vehículo específico

Rta:

~~~mysql
select v.marca, v.modelo, r.descripcion_reparacion
from vehiculos as v
inner join reparaciones as r on v.id_vehiculo = r.id_reparacion
where v.marca = 'Toyota';
~~~



Resultado

<pre>+--------+---------+---------------------------+
| marca  | modelo  | descripcion_reparacion    |
+--------+---------+---------------------------+
| Toyota | Corolla | Cambio de aceite y filtro |
+--------+---------+---------------------------+
</pre>




2. Calcular el costo total de todas las reparaciones realizadas por un empleado
   específico en un período de tiempo

Rta:

​	

~~~mysql
select e.nombre_empleado, e.apellido_empleado, sum(sr.costo) as costo_total_reparacion
from empleados as e
inner join servicio_reparaciones as sr on e.id_empleado = sr.id_empleado
inner join reparaciones as r on sr.id_reparacion = r.id_reparacion
where e.id_empleado = 1 and r.fecha_entrega between '2024-05-01' and '2024-05-03'
group by e.nombre_empleado, e.apellido_empleado;
~~~



Resultado

<pre>+-----------------+-------------------+------------------------+
| nombre_empleado | apellido_empleado | costo_total_reparacion |
+-----------------+-------------------+------------------------+
| Sebastian       | Garcia            |                 125.00 |
+-----------------+-------------------+------------------------+
</pre>




3. Listar todos los clientes y los vehículos que poseen

Rta:

~~~mysql
select c.nombre_cliente, c.apellido_cliente, v.marca, v.modelo
from clientes as c
inner join vehiculos as v on v.id_cliente = c.id_cliente;
~~~



Resultado

<pre>+----------------+------------------+------------+---------+
| nombre_cliente | apellido_cliente | marca      | modelo  |
+----------------+------------------+------------+---------+
| Juan           | Pérez            | Toyota     | Corolla |
| María          | Gómez            | Honda      | Civic   |
| Pedro          | Rodríguez        | Ford       | Focus   |
| Ana            | López            | Chevrolet  | Malibu  |
| Carlos         | Ramírez          | Nissan     | Altima  |
| Isabel         | García           | Hyundai    | Elantra |
| Diego          | Martínez         | Volkswagen | Jetta   |
| Patricia       | Sánchez          | Kia        | Optima  |
| Roberto        | Flores           | Subaru     | Impreza |
| Laura          | Álvarez          | Mazda      | 3       |
+----------------+------------------+------------+---------+
</pre>




4. Obtener la cantidad de piezas en inventario para cada pieza

Rta:

~~~mysql
select p.nombre_piezas, i.cantidad_inventario
from piezas as p
inner join inventarios as i on i.id_piezas = p.id_piezas
where p.nombre_piezas = 'Filtro de Aceite';
~~~



Resultado

<pre>+------------------+---------------------+
| nombre_piezas    | cantidad_inventario |
+------------------+---------------------+
| Filtro de Aceite |                  50 |
+------------------+---------------------+
</pre>




5. Obtener las citas programadas para un día específico

Rta:

~~~mysql
select fecha_cita, hora_cita, id_servicio, id_cliente, id_vehiculo
from citas;
~~~



Resultado

<pre>+------------+-----------+-------------+------------+-------------+
| fecha_cita | hora_cita | id_servicio | id_cliente | id_vehiculo |
+------------+-----------+-------------+------------+-------------+
| 2024-06-10 | 09:00:00  |           1 |          1 |           1 |
| 2024-06-11 | 10:30:00  |           2 |          2 |           2 |
| 2024-06-12 | 11:00:00  |           3 |          3 |           3 |
| 2024-06-13 | 08:30:00  |           4 |          4 |           4 |
| 2024-06-14 | 13:00:00  |           5 |          5 |           5 |
| 2024-06-15 | 14:30:00  |           6 |          6 |           6 |
| 2024-06-16 | 15:00:00  |           7 |          7 |           7 |
| 2024-06-17 | 09:30:00  |           8 |          8 |           8 |
| 2024-06-18 | 10:00:00  |           9 |          9 |           9 |
| 2024-06-19 | 11:30:00  |          10 |         10 |          10 |
+------------+-----------+-------------+------------+-------------+
</pre>




6. Generar una factura para un cliente específico en una fecha determinada

Rta:

~~~mysql
select * 
from facturacion
where id_cliente = 1;
~~~



Resultado

<pre>+------------+------------+-------+------------+
| id_factura | fecha      | total | id_cliente |
+------------+------------+-------+------------+
|          1 | 2024-06-01 | 50.00 |          1 |
+------------+------------+-------+------------+
</pre>




7. Listar todas las órdenes de compra y sus detalles

Rta:

~~~mysql
select oc.fecha, od.cantidad_detalle, od.precio_detalle
from ordenes_detalles as od
inner join ordenes_compra as oc on od.id_orden = oc.id_orden;
~~~



Resultado

<pre>+------------+------------------+----------------+
| fecha      | cantidad_detalle | precio_detalle |
+------------+------------------+----------------+
| 2024-06-01 |               50 |          15.99 |
| 2024-06-02 |               30 |          39.99 |
| 2024-06-03 |               40 |          89.99 |
| 2024-06-04 |               25 |          99.99 |
| 2024-06-05 |               60 |          29.99 |
| 2024-06-06 |               35 |         349.93 |
| 2024-06-07 |               45 |         119.94 |
| 2024-06-08 |               20 |        1199.92 |
| 2024-06-09 |               55 |         259.98 |
| 2024-06-10 |               70 |          99.90 |
+------------+------------------+----------------+
</pre>




8. Obtener el costo total de piezas utilizadas en una reparación específica

Rta:

~~~mysql
SELECT
    r.descripcion_reparacion,
    SUM(od.precio_detalle * pr.cantidad) AS costo_total
FROM
    reparaciones r
INNER JOIN
    piezas_reparaciones pr ON pr.id_reparacion = r.id_reparacion
INNER JOIN
    piezas p ON p.id_piezas = pr.id_piezas
INNER JOIN
    ordenes_detalles od ON od.id_piezas = p.id_piezas
GROUP BY
    r.descripcion_reparacion;
~~~



Resultado

<pre>+--------------------------------------+-------------+
| descripcion_reparacion               | costo_total |
+--------------------------------------+-------------+
| Cambio de aceite y filtro            |      125.00 |
| Reparación de frenos                 |      360.00 |
| Alineación y balanceo                |      160.00 |
| Reemplazo de batería                 |       90.00 |
| Reparación del sistema de escape     |      200.00 |
| Mantenimiento del aire acondicionado |       65.00 |
| Reparación de la transmisión         |       40.00 |
| Reemplazo de pastillas de freno      |      240.00 |
+--------------------------------------+-------------+
</pre>




9. Obtener el inventario de piezas que necesitan ser reabastecidas (cantidad
   menor que un umbral)

Rta:

~~~mysql
select p.nombre_piezas, i.cantidad_inventario
from piezas as p
inner join inventarios as i on i.id_piezas = p.id_piezas
where i.cantidad_inventario <= 25;
~~~



Resultado

<pre>+----------------------+---------------------+
| nombre_piezas        | cantidad_inventario |
+----------------------+---------------------+
| Batería de Arranque  |                  25 |
| Llantas de Aleación  |                  20 |
+----------------------+---------------------+
</pre>




10. Obtener la lista de servicios más solicitados en un período específico

Rta:

~~~mysql
select count(s.id_servicio), s.id_servicio
from servicios as s
inner join servicio_reparaciones as sr on sr.id_servicio = s.id_servicio
group by s.id_servicio;
~~~



Resultado

<pre>+----------------------+-------------+
| count(s.id_servicio) | id_servicio |
+----------------------+-------------+
|                    2 |           1 |
|                    1 |           3 |
|                    1 |           4 |
|                    1 |           5 |
|                    1 |           6 |
|                    1 |           7 |
|                    1 |           8 |
|                    1 |           9 |
|                    1 |          10 |
+----------------------+-------------+
</pre>




11. Obtener el costo total de reparaciones para cada cliente en un período
    específico

Rta:

~~~mysql
select c.nombre_cliente, c.apellido_cliente, sum(f.total) as total
from clientes as c
inner join vehiculos as v on v.id_cliente = c.id_cliente
inner join reparaciones as r on r.id_vehiculo = v.id_vehiculo
inner join facturacion as f
where fecha_salida between '2024-05-01' and '2024-05-03'
group by c.nombre_cliente, c.apellido_cliente;
~~~



Resultado

<pre>+----------------+------------------+--------+
| nombre_cliente | apellido_cliente | total  |
+----------------+------------------+--------+
| Juan           | Pérez            | 740.00 |
+----------------+------------------+--------+
</pre>




12. Listar los empleados con mayor cantidad de reparaciones realizadas en un
    período específico

Rta:

~~~mysql
select count(id_empleado), id_empleado
from servicio_reparaciones
group by id_empleado;
~~~



Resultado

<pre>+--------------------+-------------+
| count(id_empleado) | id_empleado |
+--------------------+-------------+
|                  5 |           1 |
|                  1 |           2 |
|                  1 |           4 |
|                  1 |           5 |
|                  1 |           9 |
|                  1 |          10 |
+--------------------+-------------+
</pre>




13. Obtener las piezas más utilizadas en reparaciones durante un período
    específico

Rta:

~~~mysql
select id_piezas, max(cantidad) as total
from piezas_reparaciones
group by id_piezas,cantidad
order by total desc
limit 1;
~~~



Resultado

<pre>+-----------+-------+
| id_piezas | total |
+-----------+-------+
|         3 |     4 |
+-----------+-------+
</pre>




14. Calcular el promedio de costo de reparaciones por vehículo

Rta:

~~~mysql
select avg(total)
from facturacion;
~~~



Resultado

<pre>+------------+
| avg(total) |
+------------+
|  74.000000 |
+------------+
</pre>



15. Obtener el inventario de piezas por proveedor

Rta:

~~~mysql
select p.nombre_piezas, p.descripcion_piezas, pr.nombre_proveedor
from piezas as p
inner join proveedores as pr on pr.id_proveedor = p.id_proveedor;
~~~



Resultado

<pre>+--------------------------------+----------------------------------------------------------------------------------+------------------------+
| nombre_piezas                  | descripcion_piezas                                                               | nombre_proveedor       |
+--------------------------------+----------------------------------------------------------------------------------+------------------------+
| Filtro de Aceite               | Filtro de aceite estándar para motores de gasolina y diésel.                     | Autolux                |
| Pastillas de Freno Delanteras  | Pastillas de freno de cerámica de alta calidad para uso en frenos delanteros.    | Motorparts             |
| Amortiguadores Traseros        | Amortiguadores traseros de gas de 16 pulgadas para vehículos deportivos.         | Autorepuestos Rápidos  |
| Batería de Arranque            | Batería de arranque de 12V y 600A para motores de gasolina.                      | TalleresExpress        |
| Aceite de Motor Sintético      | Aceite de motor completamente sintético para motores de alto rendimiento.        | Autotec                |
| Filtro de Aire de Alto Flujo   | Filtro de aire de alto flujo para mejorar la eficiencia del motor.               | Mecánica Total         |
| Bujías de Encendido            | Juego de 4 bujías de platino para motores de gasolina.                           | Autoservicio Mecánico  |
| Llantas de Aleación            | Llantas de aleación de 17 pulgadas para mejorar el rendimiento y la apariencia.  | Repuestos del Motor    |
| Kit de Correa de Distribución  | Kit completo de correa de distribución y tensor para motores de 4 cilindros.     | Autopiezas Directo     |
| Bombilla de Faro Halógeno      | Bombilla de faro halógeno de 55W para luces delanteras de vehículos.             | Automotriz S.A.        |
+--------------------------------+----------------------------------------------------------------------------------+------------------------+
</pre>



16. Listar los clientes que no han realizado reparaciones en el último año

Rta:

~~~mysql
select r.fecha_entrega, r.fecha_salida, c.nombre_cliente, v.marca
from reparaciones as r
inner join vehiculos as v on r.id_vehiculo = v.id_vehiculo
inner join clientes as c on c.id_cliente = v.id_cliente
where month(fecha_salida) <> '05';
~~~



Resultado

<pre>+---------------+--------------+----------------+-------+
| fecha_entrega | fecha_salida | nombre_cliente | marca |
+---------------+--------------+----------------+-------+
| 2024-02-27    | 2024-03-01   | Laura          | Mazda |
+---------------+--------------+----------------+-------+
</pre>



17. Obtener las ganancias totales del taller en un período específico

Rta:

~~~mysql
select sum(total) as ganancias
from facturacion;
~~~



Resultado

<pre>+-----------+
| ganancias |
+-----------+
|    740.00 |
+-----------+
</pre>



18. Listar los empleados y el total de horas trabajadas en reparaciones en un
    período específico (asumiendo que se registra la duración de cada reparación)

Rta:





Resultado





19. Obtener el listado de servicios prestados por cada empleado en un período
    específico

Rta:

~~~mysql
select sr.id_empleado,e.nombre_empleado, e.apellido_empleado, sr.id_servicio, s.nombre_servicio
from servicio_reparaciones as sr
inner join empleados as e on sr.id_empleado = e.id_empleado
inner join servicios as s on sr.id_servicio = s.id_servicio; 
~~~



Resultado

<pre>+-------------+-----------------+-------------------+-------------+---------------------------------+
| id_empleado | nombre_empleado | apellido_empleado | id_servicio | nombre_servicio                 |
+-------------+-----------------+-------------------+-------------+---------------------------------+
|           1 | Sebastian       | Garcia            |           1 | Cambio de Aceite                |
|           1 | Sebastian       | Garcia            |           1 | Cambio de Aceite                |
|           1 | Sebastian       | Garcia            |           3 | Revisión de Frenos              |
|           2 | Matias          | Gomez             |           4 | Cambio de Batería               |
|           1 | Sebastian       | Garcia            |           5 | Revisión de Suspensión          |
|           5 | Daniela         | Barajas           |           6 | Diagnóstico Electrónico         |
|           1 | Sebastian       | Garcia            |           7 | Cambio de Neumáticos            |
|           4 | Diego           | Perez             |           8 | Mantenimiento de Climatización  |
|           9 | María           | Sanchez           |           9 | Cambio de Filtros               |
|          10 | Pedro           | Rodríguez         |          10 | Servicio de Luces               |
+-------------+-----------------+-------------------+-------------+---------------------------------+
</pre>



## Subconsultas

1. Obtener el cliente que ha gastado más en reparaciones durante el último año.

Rta:

~~~mysql
select c.nombre_cliente, c.apellido_cliente
from clientes as c
where id_cliente = (select v.id_cliente
from reparaciones as r
inner join vehiculos as v on r.id_vehiculo = v.id_vehiculo
where year(fecha_salida) = '2024'
group by r.id_vehiculo
order by sum(r.costo_reparacion) desc
limit 1
);
~~~



Resultado

<pre>+----------------+------------------+
| nombre_cliente | apellido_cliente |
+----------------+------------------+
| Carlos         | Ramírez          |
+----------------+------------------+
</pre>



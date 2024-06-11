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
SELECT
    c.nombre_cliente,
    c.apellido_cliente,
    c.direccion_cliente,
    r.fecha_entrega,
    v.marca,
    v.modelo,
    v.año,
    v.placa,
    sr.observacion AS servicio_descripcion,
    sr.costo AS servicio_costo,
    p.nombre_piezas AS pieza_nombre
FROM
    clientes c
JOIN
    vehiculos v ON c.id_cliente = v.id_cliente
JOIN
    reparaciones r ON v.id_vehiculo = r.id_vehiculo
JOIN
    servicio_reparaciones sr ON r.id_reparacion = sr.id_reparacion
JOIN
    piezas_reparaciones pr ON r.id_reparacion = pr.id_reparacion
JOIN
    piezas p ON pr.id_piezas = p.id_piezas
WHERE
    c.id_cliente = 1
    AND r.fecha_entrega = '2024-05-01'
limit 1;
~~~



Resultado

<pre>+----------------+------------------+-------------------+---------------+--------+---------+------------+--------+------------------------------------------+----------------+------------------+
| nombre_cliente | apellido_cliente | direccion_cliente | fecha_entrega | marca  | modelo  | año        | placa  | servicio_descripcion                     | servicio_costo | pieza_nombre     |
+----------------+------------------+-------------------+---------------+--------+---------+------------+--------+------------------------------------------+----------------+------------------+
| Juan           | Pérez            | Calle 123 # 45-67 | 2024-05-01    | Toyota | Corolla | 2020-01-01 | ABC123 | Cambio de aceite realizado exitosamente. |          50.00 | Filtro de Aceite |
+----------------+------------------+-------------------+---------------+--------+---------+------------+--------+------------------------------------------+----------------+------------------+
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
| Cambio de aceite y filtro            |       55.98 |
| Reparación de frenos                 |      459.95 |
| Alineación y balanceo                |       59.98 |
| Reemplazo de batería                 |      349.93 |
| Reparación del sistema de escape     |      119.94 |
| Mantenimiento del aire acondicionado |     1199.92 |
| Reparación de la transmisión         |      259.98 |
| Reemplazo de pastillas de freno      |      359.96 |
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
select c.nombre_cliente, c.apellido_cliente, sum(r.costo_total) as total
from clientes as c
inner join vehiculos as v on v.id_cliente = c.id_cliente
inner join reparaciones as r on r.id_vehiculo = v.id_vehiculo
where fecha_salida between '2024-05-01' and '2024-05-03'
group by c.nombre_cliente, c.apellido_cliente;
~~~



Resultado

<pre>+----------------+------------------+--------+
| nombre_cliente | apellido_cliente | total  |
+----------------+------------------+--------+
| Juan           | Pérez            | 233.15 |
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
select id_piezas, sum(cantidad) as total
from servicio_reparaciones
group by id_piezas,cantidad
order by total desc
limit 1;
~~~



Resultado

<pre>+-----------+-------+
| id_piezas | total |
+-----------+-------+
|         7 |     4 |
+-----------+-------+
</pre>



14. Calcular el promedio de costo de reparaciones por vehículo

~~~mysql
select avg(costo_total)
from reparaciones;
~~~



Resultado

<pre>+------------------+
| avg(costo_total) |
+------------------+
|       145.084000 |
+------------------+
</pre>

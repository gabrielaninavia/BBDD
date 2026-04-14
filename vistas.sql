
 1.Crear una vista "nombre_cliente" con nombre y apellido de clientes
 create view nombre_cliente as select nombre, apellido from clientes

2.auto insertarte dentro de la vista nombre_cliente
insert into nombre_cliente (nombre, apellido) values ("mateo","durso")

3. borrar la vista nombre_cliente
drop view if exists nombre_cliente; 

4.Crear un vista de los productos BIC
create view productos_BIC as select * from productos where nombre_producto = "BIC"; 

5.crear una vista "porteños" de los clientes de buenos aires (buenos aires y ciudad autonoma)
CREATE VIEW porteños as select * from clientes WHERE ciudad IN ('buenos aires', 'ciudad autonoma');

6.eliminar de la vista porteños a los que no vivan en ciudad autonoma
delete from porteños where ciudad <> "ciudad autonoma"

7. vista de los productos con precio mayor a 100
create view productos as select * from productos where precio > 100

8. vista de los clientes y la ciudad en la que viven
create view inquilinos as select nombre_cliente, ciudad from clientes cl join ciudad on cl.id_ciudad = c.id

9) vista de las ciudades y las provincias en las que se ubican
create view ciudades_provincia as select c.nombre, p.nombre from Ciudades c join Provincias p on c.id_provincia = p.id;

10) vista de los clientes con la fecha de su ultima compra realizada
create view clientes as select  c.id_cliente, c.nombre, c.apellido, MAX(co.fecha) AS ultimacompra from clientes c join compras co on c.id_cliente = co.id_cliente GROUP by c.id_cliente,c.nombre,c.apellido


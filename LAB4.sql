
use UCB_VERDULEROS

select *
from Productos
where Precio >= 1


--obtener los productos que sean de grupo frutas
select Productos.*, Grupos.* 
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and
Grupos.NombreGrupo = 'frutas'

--obtener los grupos donde el precio del producto sea mayor a 2 bs

select Productos.*, Grupos.*
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and
	Productos.Precio >= 2


--mostrar todas las listas de vendedores

select *
from Vendedores

-- mostrar los vendedores casados

select *
from Vendedores
where EstalCivil = 'Casado'

-- mostrar la lista de vendedores mas viejos de mayor a menor

select *
from Vendedores
order by FechaNac asc


--mostrar solo el nombre, fechaALta, fechaNac de los vendedores

select NombreVendedor, FechaAlta, FechaNac
from Vendedores


-- mostrar todas las ventas

select
Vendedores.NombreVendedor,
Productos.NomProducto,
Ventas.Fecha,
Ventas.Kilos
from Ventas, Productos, Vendedores
where Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor

--Obtener las ventas solo de productos(tomates)

select *
from Productos, Ventas
where Productos.NomProducto = 'Tomates'

--Obtener las ventas del vendedor(federico)

select Vendedores.NombreVendedor, Ventas.*
from Vendedores, Ventas
where Vendedores.NombreVendedor = 'Federico'



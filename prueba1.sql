update Datos_Factura set ID_Factura =5;  
Update Nombre, Precio, Fabricante set

Update Articulos set Nombre= 'ImpresoraLazer' where Codigo=8;
Select Precio from Fabricantes as Fabircantes.Codigo; 
select Fabricantes.Nombre, Articulos.Precio, Articulos.Fabricante from Articulos Join Fabricantes on Articulos.Codigo= Fabricantes.Codigo order by Fabricantes.Nombre;
delete Articulos where Codigo =6; 
select Fabricantes.Nombre, Articulos.Precio, Articulos.Fabricante, Articulos.Nombre from Articulos Join Fabricantes on Articulos.Codigo= Fabricantes.Codigo order by Fabricantes.Nombre;
select Nombre from Articulos where Precio = '18.000' and Precio>'18000';
select Nombre, Precio FROM Articulos where Codigo=2; 
Select Articulos.Precio, Fabricantes.Nombre from Articulos 
Join Fabricantes on Articulos.Codigo= Fabricantes.Codigo 
ORDER BY precio;
Select Fabricante.Nombre, Articulos.Precio from Articulos 
Join Fabricantes on Articulos.Codigo= Fabricantes.Codigo order by Precio DESC;
 Select Precio from Articulos where Precio= 120000 and precio>120000; 

 Select Articulos.Nombre, Articulos.Precio from Articulos where Precio>=18000 and precio = 18000 order by Precio DESC;
  Select Articulos.Nombre, Articulos.Precio from Articulos where Precio>18000 and precio = 18000 order by Nombre ASC; 

  Select Nombre, Precio from Articulos Min; 
  Select Fabricantes.Nombre from Fabricantes WHERE Precio>150000 and Precio=150000; 
  Update Nombre, Precio, Fabricante set Nombre='Altavoz';  
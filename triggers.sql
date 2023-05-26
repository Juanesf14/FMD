--Actualizar la ultima fecha de actualizacion de la tabla publicacion 
CREATE TRIGGER ver_ultima_modificacion_Publicacion
-- creamos el trigger y lo llamamos ver_ultima_modificacion_Publicacion
ON Publicacion
-- indicamos que vamos a trabajr en la tabla publicacion
FOR UPDATE
-- y vamos a realizar una after actualizacion
AS
-- con lo siguiente
BEGIN
-- seguir con
   UPDATE Publicacion
   -- la actualizacion de la tabla publicacion
   SET Fecha_modificacion = GETDATE()
   -- seleccionando la fecha para cambiar la fecha que tenia fecha modificacion a la 
   -- fecha de hoy
   FROM inserted
   -- de la tabla imaginaria que  se crea llamada inserted
   WHERE Publicacion.ID_publicacion = inserted.ID_publicacion;
   -- donde el id publicacion sea igual al id que se inserto en la tabla inaginatia
END;
select * from Publicacion
-- mostramos ejecucion antes
update Publicacion set Tamano_publicado='Grande' where ID_publicacion=2;
-- por ultimo realizamos una actualizacion para verificar la modificacion
select * from Publicacion
-- mostramos ejecucion despues 



--eliminar publicaciones antiguas al insertar una nueva publicacion  

CREATE TRIGGER Elimina_Publicaciones_Antiguas
-- creamos el trigger para eliminar publicaciones antiguas
ON Publicacion 
-- en la tabla publicacion
AFTER INSERT 
-- despues de realizar un insert
AS 
BEGIN 
-- seguir con

    DELETE FROM Publicacion 
	-- vamos a eliminar de la tabla publicacion
    WHERE ID_publicacion IN ( 
	-- donde  el id publicacion cumpla con
        SELECT TOP 1 ID_publicacion 
		-- ser el primero
        FROM Publicacion 
		-- de publicacion
        ORDER BY Fecha_avistamiento_publicado ASC
		-- ordenado por la fecha en forma ASCENDENTE
    ); 
END;
select * from Publicacion ORDER BY Fecha_avistamiento_publicado DESC 
insert into Publicacion (Tamano_publicado, Edad_publicada, Collar_publicado, Raza_publicada, Fecha_avistamiento_publicado, Localidad_publicada, Barrio_publicado, Descripcion_publicada) 
values ('Mediano', 'Anciano', 'true', 'Poodol', '2023-02-26', 'Engativa', 'Lujan', 'Repair Nasopharynx, Percutaneous Endoscopic Approach');  
-- realizamos un insert para verificar
select * from Publicacion ORDER BY Fecha_avistamiento_publicado DESC 
-- mostramos los datos para ver la funcionalidad del trigger 





--eliminar perros repetidos comparando publicacion vs datos perros 
CREATE TRIGGER Eliminar_perro
--creamos el trigger para comprarar los datos y eliminar de publicacion
ON Publicacion
--en la tabla publicacion 
FOR DELETE
--usaremos el delete para borrar datos de la tabla publicacion 
AS
BEGIN
--iniciar 
    DELETE dp
	--se declara la eliminacion con la tabla virtual dp- datos perros 
    FROM deleted d
	--se usa la tabla virtual deleted que representa los registros eliminados de la tabla "Publicacion"
    JOIN Datos_Perros dp
	--join datos perros para unir las tablas 
        ON d.ID_Perro = dp.ID_Perro
		--join se une entre los ids de las tablas virtuales deleted y la representacion de datos perros 
    WHERE d.Tamano_publicado = dp.Tamano
	--se filtran los datos iniciando una comparativa donde d de la tabla deleted con datos de publicacion
	--tenga los datos iguales a dp que es la virtualizacion de datos perros 
        AND d.Edad_publicada = dp.Edad
        AND d.Collar_publicado = dp.Collar
        AND d.Raza_publicada = dp.Raza
		
END;
--finalizacion 
delete from Publicacion where ID_publicacion=21
--delete como prueba para eliminar un regustro de publicacion que se compara y se envia a la tabla perros 
select * from Datos_Perros
Select * from Publicacion
--selects de verificacion 
insert into Datos_Perros (Nombre_perro,Raza,Tamano, edad, collar)values ('XD','Gran Danes','Mediano', 'Cachorro', 'true') 
--insercion de dato prueba 
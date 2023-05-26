--Seleccion de prueba
select * from Datos_Usuarios; 
--creacion de procedmiento de buscar perros 'general'
Create procedure MostrarTodo
as
--seleccion de datos publicados sobre perros de la tabla publicacion para una vista general ordenado por tamaño
select Tamano_publicado, Edad_publicada, Collar_publicado, Raza_publicada, Fecha_avistamiento_publicado, Localidad_publicada,Barrio_publicado, Descripcion_publicada
from publicacion order by Tamano_publicado
--terminacion de sentencia
end 
exec MostrarTodo
--creacion de procedimiento de subir publicacion una publicacion 
create procedure Publicar
as
--insertar el registro de la nueva publicacion
insert into Publicacion (Tamano_publicado, Edad_publicada, Collar_publicado, Raza_publicada, Fecha_avistamiento_publicado, Localidad_publicada, Barrio_publicado, Descripcion_publicada) values ('Mediano', 'Cachorro', 'true', 'Gran Danes', '2023-02-14', 'Engativa', 'Lujan','ERA UN CACHORRO MUY GRANDE CORRIENDO POR EL PARQUE Y NADIE LO PODIA ALCANZAR');
--seleccion de datos para confirmar la insersion ordenado por tamaño de perros
select Tamano_publicado, Edad_publicada, Collar_publicado, Raza_publicada, Fecha_avistamiento_publicado, Localidad_publicada,Barrio_publicado, Descripcion_publicada
from publicacion order by Tamano_publicado
end 
--ejecucion de procedimiento
exec Publicar
--crear procedimiento para comparar datos de perros de la tabla publicacion con el id contra los datos de la tabla perros, con datos de usuario si se puede

CREATE PROCEDURE BuscoCachorro
AS
BEGIN
--seleccionar los datos de perror publicados comparando con registros de edad que comience con C como chachorros
  SELECT Edad_publicada, Tamano_publicado, Raza_publicada
  FROM Publicacion
  WHERE Edad_publicada LIKE 'C%'
  --Seleccionar los datos de perros guardados en las bases de datos del programa 
  SELECT edad, raza, Tamano
  FROM Datos_Perros
  --seleccionar misma condicion de tabla anterior C
  WHERE edad LIKE 'C%'
END
--ejecucion de procedimiento 
exec BuscoCachorro; 

--procedimiento para mostrar tablas datos usuario, tipo de usuario, datos suscripcion. hacer un update de renovacion que tambien 
--cambie tipo de usuario a usuario premium a no preimum
create procedure ActualizacionEstadoSuscripcionNpago

as
--left outer join para ver 
Select Datos_Usuarios.ID_Usuario, Datos_Usuarios.Nombre_usuario, Datos_Usuarios.Correo_usuario, tipos_de_usuario.UNormal, tipos_de_usuario.UPremium,
Datos_Suscripcion.Renovacion, Datos_Suscripcion.Valor_Suscripcion 
from Datos_Usuarios left outer join tipos_de_usuario 
on Datos_Usuarios.ID_Usuario=tipos_de_usuario.ID_tipo_usuario
left outer join  Datos_Suscripcion 
on Datos_Suscripcion.ID_Suscripcion=tipos_de_usuario.ID_tipo_usuario
order by Datos_Usuarios.ID_Usuario

update tipos_de_usuario set UPremium ='false',UNormal='true'  from tipos_de_usuario 
left outer join Datos_Suscripcion 
on Datos_Suscripcion.ID_Suscripcion=tipos_de_usuario.ID_tipo_usuario
where Datos_Suscripcion.Renovacion='false'; 

Select Datos_Usuarios.ID_Usuario, Datos_Usuarios.Nombre_usuario, Datos_Usuarios.Correo_usuario, tipos_de_usuario.UNormal, tipos_de_usuario.UPremium,
Datos_Suscripcion.Renovacion, Datos_Suscripcion.Valor_Suscripcion 
from Datos_Usuarios left outer join tipos_de_usuario 
on Datos_Usuarios.ID_Usuario=tipos_de_usuario.ID_tipo_usuario
left outer join  Datos_Suscripcion 
on Datos_Suscripcion.ID_Suscripcion=tipos_de_usuario.ID_tipo_usuario
order by Datos_Usuarios.ID_Usuario;

end 

exec ActualizacionEstadoSuscripcionNpago 


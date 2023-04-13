create database FMD   

  

-- creamos la base de datos llamada FMD silras de (FIND MY DOGGY)   

 

use FMD   

  

-- indicamos que vamos a usar la base de datos FMD para guardar las tablas que vamos a crear a continuacion  

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX ACCIONES PA ACORDARME XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  

  

-- select * from Publicacion; ----> PARA MOSTRAR TABLA  

-- drop table Datos_Perros;  ----> PARA BORRAR TABLA  

-- ALTER TABLE tutabla ALTER COLUMN tucolumna tipo NOT NULL;  ----> para cambiar un valor de una columna en una tabla  

  

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX ACCIONES PA ACORDARME XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  

  

create table Publicacion(  

-- creamos la tabla llamada publicacion  

ID_publicacion int primary key identity (1,1) not null,    

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla  

-- le indicamos que sera incrementable de uno en uno y de tipo not null porque es obligatorio que de llene este dato  

Tamano_publicado varchar(30) not null,     

Edad_publicada varchar(30) not null,     

Collar_publicado varchar(30) not null,     

Raza_publicada varchar(30) not null,     

Fecha_avistamiento_publicado date not null,     

Localidad_publicada varchar(30) not null,     

Barrio_publicado varchar(30) not null,     

Descripcion_publicada text null  

  

);  

-- añadimos los datos basicos de la tabla   

alter table publicacion add ID_Perro int null;  

alter table publicacion add constraint FK_ID_Perro  

  

              foreign key (ID_Perro) references Datos_Perros (ID_Perro);  

-- añado id_perro a la tabla de publicacion y creo la relacion como llave foránea por medio del constraint  

  

alter table publicacion add ID_Usuario int null;  

alter table publicacion add constraint FK_ID_Usuario  

              foreign key (ID_Usuario) references Datos_Usuarios (ID_Usuario);  

-- añado ID_Usuario a la tabla de publicacion y creo la relacion como llave foránea por medio del constraint  

  

alter table publicacion add ID_avistamiento int null;  

alter table publicacion add constraint FK_ID_avistamiento  

              foreign key (ID_avistamiento) references Datos_avistamiento (ID_avistamiento); 
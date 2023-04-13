create table Datos_avistamiento(  

-- creamos la  tabla llamada datos avistamiento 

  

ID_Avistamiento int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

);  

-- añadimos los datos basicos de la tabla  

  

alter table Datos_avistamiento add ID_Ubicacion int not null; 

alter table Datos_avistamiento add constraint FK_ID_Ubicacion 

              foreign key (ID_Ubicacion) references Datos_Ubicacion(ID_Ubicacion); 

-- añado ID_Ubicacion a la tabla de Datos_avistamiento y creo la relacion como llave foránea por medio del constraint 
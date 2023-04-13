create table Datos_Mensajes(     

-- creamos la  tabla llamada datos mensajes 

  

ID_Mensajes int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Fecha_mensajes date,    

Texto_enviado text,  

Texto_recivido text, 

); 

-- añadimos los datos basicos de la tabla  


alter table Datos_Mensajes add ID_Respuesta_Predeterminada int not null; 

alter table Datos_Mensajes add constraint FK_ID_Respuesta_Predeterminada 

              foreign key (ID_Respuesta_Predeterminada) references Datos_Respuesta_Predeterminada (ID_Respuesta_Predeterminada); 

-- añado ID_Respuesta_Predeterminada a la tabla de Datos_Mensajes y creo la relacion como llave foránea por medio del constraint 
create table Datos_Usuarios(     

-- creamos la  tabla llamada datos usuarios 

  

ID_Usuario int primary key identity (1,1) not null,    

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Nombre_usuario varchar(30),    

Correo_usuario varchar(30),    

Telefono_Usuario bigint,    

Contrasena_Usuario varchar(15),     

); 

-- añadimos los datos basicos de la tabla  

  

alter table Datos_Usuarios add ID_Tipo_Usuario int not null; 

alter table Datos_Usuarios add constraint FK_ID_Tipo_Usuario 

              foreign key (ID_Tipo_Usuario) references Tipos_de_usuario(ID_Tipo_Usuario); 

-- añado id_tipo_usuario a la tabla de datos_usuario y creo la relacion como llave foránea por medio del constraint 

  

  

alter table Datos_Usuarios add ID_Mensajes int not null; 

alter table Datos_Usuarios add constraint FK_ID_Mensajes 

              foreign key (ID_Mensajes) references Datos_Mensajes(ID_Mensajes); 

-- añado ID_Mensajes a la tabla de datos_usuario y creo la relacion como llave foránea por medio del constraint 

  

alter table Datos_Usuarios add ID_Factura int not null; 

alter table Datos_Usuarios add constraint FK_ID_Factura 

              foreign key (ID_Factura) references Datos_Factura(ID_Factura); 

-- añado ID_Factura a la tabla de datos_usuario y creo la relacion como llave foránea por medio del constraint 
create table Pago_Efectivo(  

-- creamos la  tabla llamada pago efectivo 

  

ID_Pago_Efectivo int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

);  

-- a�adimos los datos basicos de la tabla  

  

  

alter table Pago_Efectivo add ID_Tipo_contrase�a int not null; 

alter table Pago_Efectivo add constraint FK_ID_Tipo_contrase�a 

              foreign key (ID_Tipo_contrase�a) references contrase�a (ID_Tipo_contrase�a); 

-- a�ado ID_Tipo_contrase�a a la tabla de Pago_Efectivo y creo la relacion como llave for�nea por medio del constraint 

  

  

alter table Pago_Efectivo add ID_Respuesta_Libre int not null; 

alter table Pago_Efectivo add constraint FK_ID_Respuesta_Libre 

              foreign key (ID_Respuesta_Libre) references Datos_Respuesta_Libre (ID_Respuesta_Libre); 

-- a�ado ID_Respuesta_Libre a la tabla de Pago_Efectivo y creo la relacion como llave for�nea por medio del constraint 
create table Datos_Factura(     

-- creamos la  tabla llamada datos factura 

  

ID_Factura int primary key identity (1,1) not null,    

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

);     

-- añadimos los datos basicos de la tabla  

  

  

alter table Datos_Factura add ID_Suscripcion int not null; 

alter table Datos_Factura add constraint FK_ID_Suscripcion 

              foreign key (ID_Suscripcion) references Datos_Suscripcion (ID_Suscripcion); 

-- añado ID_Suscripcion a la tabla de Datos_Factura y creo la relacion como llave foránea por medio del constraint 

  

  

alter table Datos_Factura add ID_Plan int not null; 

alter table Datos_Factura add constraint FK_ID_Plan 

              foreign key (ID_Plan) references Plan_Suscripcion (ID_Plan); 

-- añado ID_Plan a la tabla de Datos_Factura y creo la relacion como llave foránea por medio del constraint 
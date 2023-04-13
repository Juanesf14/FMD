create table Datos_Respuesta_Libre(   

-- creamos la  tabla llamada datos respuesta libre 

  

   

ID_Respuesta_Libre int primary key identity (1,1) not null,   

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Respuesta_Libre varchar(40),   
);  
-- añadimos los datos basicos de la tabla 
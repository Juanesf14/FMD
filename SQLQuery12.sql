create table Datos_Respuesta_Predeterminada(   

-- creamos la  tabla llamada datos respuesta predeterminada 

  

ID_Respuesta_Predeterminada int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Respuesta_predeterminada varchar(30),   

);  

-- añadimos los datos basicos de la tabla 
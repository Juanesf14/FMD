create table contraseña(  

-- creamos la  tabla llamada contraseña 

  

ID_Tipo_contraseña int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Contraseña_N varchar(15) not null,  

Contraseña_P varchar(15) not null  

);  

-- añadimos los datos basicos de la tabla 
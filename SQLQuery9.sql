create table contraseņa(  

-- creamos la  tabla llamada contraseņa 

  

ID_Tipo_contraseņa int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Contraseņa_N varchar(15) not null,  

Contraseņa_P varchar(15) not null  

);  

-- aņadimos los datos basicos de la tabla 
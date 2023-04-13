create table Datos_Ubicacion(  

-- creamos la  tabla llamada datos ubicacion 

  

ID_Ubicacion int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla 

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato 

Localidad varchar (20),  

Barrio varchar (30), 

Fecha_avistamiento date not null,  

);  

-- añadimos los datos basicos de la tabla 
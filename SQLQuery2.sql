create table Datos_Perros(      

-- creamos la tabla llamada datos perros  

ID_Perro int primary key identity (1,1) not null,  

-- le asignamos un ID, el tipo de dato que sera entero y lo identificamos como la llave primaria de la tabla  

-- le indicamos que sera incrementable de uno en uno y de tipo not null por que es obligatorio que de llene este dato  

Nombre_perro varchar(30) not null,     

Raza varchar(30) not null,     

Tamano varchar(30) not null,     

edad varchar(30) not null,     

collar varchar(30) not null   

);   
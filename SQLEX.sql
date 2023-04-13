Dado el siguiente modelo relacional de una base de datos de una agencia de viajes:
LUGAR 
(L_CODIGO, L_NOMBRE, L_TIPO, L_CLIMA, L_TOTAL_HABITANTES, L_DESCRIPCION,L_FK_LUGAR)
VIAJE 
(V_CODIGO, V_FK_PASAJERO, V_FK_LUGAR, V_FEjenCHA )
PASAJERO
 (P_CODIGO, P_NOMBRE, P_APELLIDO, P_PERFIL, P_FECHA_NACIMIENTO, P_NUM_TELEFONICO, P_FK_LUGAR_PAIS_RESIDENCIA)
CLASE
(c_codigo, C_bussines, C_pobre)


1.Nombre y apellido del estudiante:
2.Listar los diferentes apellidos de los pasajeros que empiecen por la letra M y terminen en EZ.
 
–select * from PASAJERO  where  P_APELLIDO like 'M%' and P_APELLIDO like'%EZ'; 



3.Seleccionar todos aquellos pasajeros que no usen clase business ordenados por su número de teléfono y apellido.
SELECT * FROM clase  INNER JOIN pasajero ON clase.c_codigo = pasajero.p_codigo
WHERE CLASE.C_NOMBRE <> 'business'
ORDER BY P_NUM_TELEFONICO, P_APELLIDO;
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SELECT P_NUM_TELEFONICO, P_APELLIDO
FROM PASAJERO
LEFT JOIN VIAJE ON PASAJERO.P_CODIGO = VIAJE.V_FK_PASAJERO
LEFT JOIN CLASE ON VIAJE.C_NOMBRE = CLASE.C_NOMBRE
WHERE CLASE.C_NOMBRE <> 'business'
ORDER BY P_NUM_TELEFONICO, P_APELLIDO;

SELECT *FROM  PASAJERO
WHERE clase != 'business' 
ORDER BY _NUM_TELEFONICO ,P_APELLIDO;
 
4.Mostrar los países que no tengan entre 50 y 100 millones de habitantes y estén en Europa o Asia y además tengan una M en su nombre.

SELECT L_NOMBRE
FROM LUGAR
WHERE L_TOTAL_HABITANTES < 50000000 
AND (L_TIPO = 'Europa' OR L_TIPO = 'Asia')
AND L_NOMBRE LIKE '%M%';


5.Listado con los lugares de clima desconocido y que tengan la palabra ciudad en su nombre o que el total de sus habitantes sea inferior a 5 millones.
select L_CLIMA from  LUGAR
order by L_TOTAL_HABITANTES desc

SELECT L_NOMBRE, L_CLIMA, L_TOTAL_HABITANTES
FROM LUGAR
WHERE L_CLIMA = 'desconocido' 
AND (L_NOMBRE LIKE '%ciudad%' OR L_TOTAL_HABITANTES < 5000000);

6.Listados viajeros que tienen el perfil LOW_COST y tengan apellido Ruiz.
Escriba su respuesta

select  P_NOMBRE, P_APELLIDO, P_PERFIL
from pasajero
where P_Perfil = 'LOW_COST' 
and P_APELLIDO = 'Ruiz';

7.Mostrar los viajeros ordenados por su fecha de nacimiento (de más joven a menos) y por su apellido de forma inversa.

SELECT * FROM PASAJERO
ORDER BY P_FECHA_NACIMIENTO DESC, P_APELLIDO DESC;




8.Listar los pasajeros por orden alfabético de su apellido, mostrarlos de la forma Apellido, Nombre y etiquetar la columna como Nombre y Apellido.
select P_Nombre,P_Apellido 
from Pasajeros
order by  P_APELLIDO DESC, P_Nombre desc;
(profe como etiqueto esto?)

select P_NOMBRE, P_APELLIDO
from Pasajeros 
order by P_APELLIDO DESC, P_NOMBRE DESC;  


9.Mostrar los países de Europa ordenándolos por su número de habitantes de menor a mayor.

SELECT L_NOMBRE, L_TOTAL_HABITANTES
FROM LUGAR
WHERE L_TIPO = 'Europa'
ORDER BY L_TOTAL_HABITANTES ASC;


10.Listar los pasajeros nacidos después de 1970 que viajen con el perfil business class y que tenga una G en su nombre.
 SELECT * FROM PASAJERO
WHERE P_FECHA_NACIMIENTO > '1970-01-01'
  AND P_PERFIL = 'business class'
  AND P_NOMBRE LIKE '%G%';


11.Listado de los lugares que no tengan informado el número total de habitantes, su nombre empiece por C, con clima desconocido o Mediterráneo.
SELECT *
FROM LUGAR
WHERE L_TOTAL_HABITANTES IS NULL
  AND (L_NOMBRE LIKE 'C%' OR L_CLIMA IN ('desconocido', 'Mediterráneo'));

  12.Listado de países ordenados por su total de habitantes de mayor a menor.
SELECT L_FK_LUGAR, SUM(L_TOTAL_HABITANTES) AS TOTAL_HABITANTES
FROM LUGAR
GROUP BY L_FK_LUGAR
ORDER BY TOTAL_HABITANTES DESC;     ESTE QUE PEDO? NO ENTENDI
SELECT  L_NOMBRE FROM LUGAR ORDER BY TOTAL_HABITANTES DESC;  

13.Mostrar todos los lugares que tengan clima registrado.
 SELECT *
FROM LUGAR
WHERE L_CLIMA IS NOT NULL;
14.Mostrar los pasajeros que no tengan perfil de pasajero registrado.
SELECT *
FROM PASAJERO
WHERE P_PERFIL IS NULL;
15.Listado de todos los pasajeros que contengan la letra “Y” en su nombre y que hayan nacido entre el año 1975 y el 1985.
 SELECT *
FROM PASAJERO
WHERE P_NOMBRE LIKE '%Y%' AND YEAR(P_FECHA_NACIMIENTO) BETWEEN 1975 AND 1985;
16.Mostrar los países con clima Tropical ordenados alfabéticamente.
 SELECT *
FROM LUGAR
WHERE L_CLIMA = 'Tropical'
ORDER BY L_NOMBRE;

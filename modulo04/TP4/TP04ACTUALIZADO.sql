
-- AVISO : no pude hacer funcionar los insert en algunas tablas, me tira error con las claves foraneas, ni idea de como hacerlo, Estan comentadas para que el resto funcione --


CREATE DATABASE mydb;
USE mydb;




-- EJERCICIO 1  --

CREATE TABLE IF NOT EXISTS curso (
  Cod_Curso INT(11) PRIMARY KEY  NOT NULL,
  Nombre VARCHAR(45),
  Cod_Matricula INT(11),
  id_Profesor INT(11)
);


CREATE TABLE IF NOT EXISTS alumno (
  Cod_Matricula INT(11) PRIMARY KEY  NOT NULL,
  Nombre VARCHAR(45) ,
  DNI INT(11) ,
  Fecha_Nacimiento  DATE,
  Email VARCHAR(45) ,
  Cod_Curso INT(11) 
);




CREATE TABLE IF NOT EXISTS profesor (
  id_Profesor INT(11) ,
  Nombre VARCHAR(45),
  Especialidad VARCHAR(45),
  Email VARCHAR(45) ,
  Cod_Curso INT(11) 
  
);





INSERT INTO alumno 
VALUES  (5142, "Arguello Marcelo", 4565456, "2000/05/22", "Marcelito@gmail.com", 23124 );

INSERT INTO alumno 
VALUES  (3212, "Arguello Franco", 487215, "2000/05/22", "Frank@live.com", 233124);

INSERT INTO alumno 
VALUES  (3412, "Arguello Rodrigo", 467871, "2000/05/22", "Rodri@msn.com", 231124);



INSERT INTO profesor 
VALUES (321, "Robert gomez", "matematica", "robertito@gmail.com", 23124);

INSERT INTO profesor 
VALUES (3321, "Robo gomez", "lengua", "robo@gmail.com", 233124);

INSERT INTO profesor 
VALUES (3121, "Robe gomez", "historia", "robe@gmail.com", 231124);


INSERT INTO curso 
VALUES (23124, "Fisica", 5142, 3121);

INSERT INTO curso 
VALUES (233124, "Etica", 3212, 3321);

INSERT INTO curso 
VALUES ( 231124, "Geologia", 3412, 321);



-- EJERCICIO 1  --

-- EJERCICIO 2 --

CREATE TABLE IF NOT EXISTS PAIS (
  ID_Pais    INT PRIMARY KEY NOT NULL,
  Nombre_Pais VARCHAR(45) 
);
  



CREATE TABLE IF NOT EXISTS PROVINCIA (
  ID_Provincia  INT PRIMARY KEY NOT NULL,
  Nombre_Provincia VARCHAR(45) ,
  PAIS_ID_Pais INT NOT NULL
  
);


CREATE TABLE IF NOT EXISTS EMPLEADO (
  id_Empleado  INT PRIMARY KEY NOT NULL,
  DNI INT ,
  Nombre VARCHAR(45),
  Telefono VARCHAR(45) ,
  Email VARCHAR(45) ,
  Fecha_alta DATE 
  
);

CREATE TABLE IF NOT EXISTS LOCALIDAD (
 Codigo_Localidad INT  PRIMARY KEY  NOT NULL,
 Nombre VARCHAR(45) ,
 Codigo_Postal INT ,
 PROVINCIA_ID_Provincia INT NOT NULL,
 EMPLEADO_id_Empleado INT NOT NULL
);
    



INSERT INTO EMPLEADO (id_Empleado, DNI, Nombre, Telefono, Email, Fecha_alta)
VALUES (321323, 33124312, "Ari Gomez", 33221144, "Ari@gmail.com", "2010/12/12");

INSERT INTO EMPLEADO (id_Empleado, DNI, Nombre, Telefono, Email, Fecha_alta)
VALUES (321123, 33125312, "Ariel Gomez", 33322144, "Arielito@gmail.com", "2010/12/12");

INSERT INTO EMPLEADO (id_Empleado, DNI, Nombre, Telefono, Email, Fecha_alta)
VALUES (322123, 33126312, "Ariela Gomez", 33245144, "Arielita@gmail.com", "2010/12/12");


INSERT INTO PAIS (ID_Pais, Nombre_Pais)
VALUES (1, "Rusia");

INSERT INTO PAIS (ID_Pais, Nombre_Pais)
VALUES (2, "Alemania");

INSERT INTO PAIS (ID_Pais, Nombre_Pais)
VALUES (3, "Hungria");


INSERT INTO PROVINCIA(ID_Provincia, Nombre_Provincia, PAIS_ID_Pais)
VALUES (321231, "OKLAHOMA", 1);

INSERT INTO PROVINCIA(ID_Provincia, Nombre_Provincia, PAIS_ID_Pais)
VALUES (3213231, "texas", 2);

INSERT INTO PROVINCIA(ID_Provincia, Nombre_Provincia, PAIS_ID_Pais)
VALUES (3212231, "ohio", 3); 





INSERT INTO LOCALIDAD
VALUES (321231, "San pedro", 1, 321231, 321323 );

INSERT INTO LOCALIDAD
VALUES (3213231, "Londres", 2, 3213231, 321123);

INSERT INTO LOCALIDAD
VALUES (3212231, "Tokyo", 3, 3212231, 322123); 




-- EJERCICIO 2 --
-- EJERCICIO 3 --

CREATE TABLE IF NOT EXISTS CLIENTES (
 id_Cliente INT PRIMARY KEY  NOT NULL,
 Nombre VARCHAR(45) ,
 DNI INT ,
 Direccion VARCHAR(45) ,
 Telefono VARCHAR(45) ,
 Aval INT 
);




CREATE TABLE IF NOT EXISTS RESERVAS (
id_Reserva INT PRIMARY KEY  NOT NULL,
Fecha_Inicio DATE ,
Fecha_Final DATE ,
Precio_Total DECIMAL ,
CLIENTES_id_Cliente INT NOT NULL

);



CREATE TABLE IF NOT EXISTS AUTOS(
  id_Auto INT PRIMARY KEY  NOT NULL,
  Patente VARCHAR(45), 
  Modelo VARCHAR(45), 
  Color VARCHAR(45),
  Marca VARCHAR(45),
  RESERVAS_id_Reserva INT NOT NULL,
  Precio DOUBLE
);


CREATE TABLE IF NOT EXISTS Detalles_Reserva(
 Litros DOUBLE,
 AUTOS_id_Auto INT PRIMARY KEY NOT NULL
);



    
INSERT INTO CLIENTES (id_Cliente, Nombre, DNI, Direccion, Telefono, Aval)
VALUES (3213323, "Ariek Gomez", 332211144, "Avenida Las americas 33212", "42312341", 32123);

INSERT INTO CLIENTES (id_Cliente, Nombre, DNI, Direccion, Telefono, Aval)
VALUES (3211323, "Arie Gomez", 332213144, "Avenida Las americas 33212", "42312341", 32123);

INSERT INTO CLIENTES (id_Cliente, Nombre, DNI, Direccion, Telefono, Aval)
VALUES (3214323, "Ari Gomez", 332215144, "Avenida Las americas 33212", "42312341", 32123);    


INSERT INTO AUTOS (id_Auto, Patente, Modelo, Color, Marca, RESERVAS_id_Reserva, Precio )
VALUES (32123, "332-qes", "Camaro", "Amarelo", "Chevrolette",1213,  24.50);

INSERT INTO AUTOS (id_Auto, Patente, Modelo, Color, Marca, RESERVAS_id_Reserva, Precio )
VALUES (32723, "332-qes", "Camaro", "Amarelo", "Chevrolette", 121321,  24.50);

INSERT INTO AUTOS (id_Auto, Patente, Modelo, Color, Marca, RESERVAS_id_Reserva, Precio )
VALUES (32623, "332-qes", "Camaro", "Amarelo", "Chevrolette", 123321,  24.50);



INSERT INTO RESERVAS (id_Reserva, Fecha_Inicio, Fecha_Final, Precio_Total, CLIENTES_id_Cliente )
VALUES (1213, "2020/12/12", "2020/11/11", 334.21, 3211323);

INSERT INTO RESERVAS (id_Reserva, Fecha_Inicio, Fecha_Final, Precio_Total, CLIENTES_id_Cliente )
VALUES (121321, "2020/12/12", "2020/11/11", 334.21, 3213323);

INSERT INTO RESERVAS (id_Reserva, Fecha_Inicio, Fecha_Final, Precio_Total, CLIENTES_id_Cliente )
VALUES (123321, "2020/12/12", "2020/11/11", 334.21, 3214323);



INSERT INTO Detalles_Reserva 
VALUES(3, 32123);

INSERT INTO Detalles_Reserva 
VALUES(3, 32723);

INSERT INTO Detalles_Reserva 
VALUES(3, 32623);



ALTER TABLE  curso 
ADD CONSTRAINT fkcurso_alumno FOREIGN KEY(Cod_Matricula) REFERENCES alumno(Cod_Matricula);

ALTER TABLE  alumno
ADD CONSTRAINT fkalumno_curso FOREIGN KEY(Cod_Curso) REFERENCES curso (Cod_Curso);

ALTER TABLE  profesor
ADD CONSTRAINT fkCurso_profesor FOREIGN KEY(Cod_Curso) REFERENCES curso (Cod_Curso);



ALTER TABLE  PROVINCIA
ADD CONSTRAINT `fk_PROVINCIA_PAIS1`
    FOREIGN KEY (`PAIS_ID_Pais`)
    REFERENCES `mydb`.`PAIS` (`ID_Pais`)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE  LOCALIDAD
ADD CONSTRAINT fk_LOCALIDAD_PROVINCIA1
    FOREIGN KEY (PROVINCIA_ID_Provincia)
    REFERENCES PROVINCIA(ID_Provincia),
    
ADD CONSTRAINT fk_LOCALIDAD_EMPLEADO1
    FOREIGN KEY (EMPLEADO_id_Empleado)
    REFERENCES EMPLEADO(id_Empleado)
;


ALTER TABLE RESERVAS
ADD CONSTRAINT `fk_RESERVAS_CLIENTES`
    FOREIGN KEY (`CLIENTES_id_Cliente`)
    REFERENCES `mydb`.`CLIENTES` (`id_Cliente`)
;



ALTER TABLE AUTOS
ADD CONSTRAINT `fk_AUTOS_RESERVAS1`
    FOREIGN KEY (`RESERVAS_id_Reserva`)
    REFERENCES `mydb`.`RESERVAS` (`id_Reserva`)
;    


ALTER TABLE Detalles_Reserva
ADD CONSTRAINT `fk_Detalles_Reserva_AUTOS1`
    FOREIGN KEY (`AUTOS_id_Auto`)
    REFERENCES `mydb`.`AUTOS` (`id_Auto`);
    

    


SELECT * FROM reservas




-- EJERCICIO 3-

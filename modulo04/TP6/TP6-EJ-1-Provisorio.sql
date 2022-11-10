DROP DATABASE IF EXISTS elsistema;
CREATE DATABASE elsistema CHARACTER SET utf8mb4;
USE elsistema;
CREATE TABLE departamentos (
iddepartamento INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL UNIQUE,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado BOOLEAN NOT NULL
);
CREATE TABLE empleados (
idempleado BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit INT NOT NULL UNIQUE,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(20) NOT NULL,
fecha_nacimiento DATE NOT NULL,
id_departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (id_departamento) REFERENCES departamentos(iddepartamento)
);
CREATE TABLE clientes (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
cuitcuil VARCHAR(20),
ciudad VARCHAR(100),
categoría INT UNSIGNED
);
CREATE TABLE vendedores (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
cuitcuil VARCHAR(20),
comisión FLOAT
);
CREATE TABLE pedidos (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cantidad DOUBLE NOT NULL,
fecha DATE,
id_cliente INT UNSIGNED NOT NULL,
id_vendedor INT UNSIGNED NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id)
);

CREATE TABLE paises (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE provincias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL UNIQUE,
    idpais INT NOT NULL,
    FOREIGN KEY (idpais) REFERENCES paises(id)	
);


CREATE TABLE localidades (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL UNIQUE,
    cp INT NOT NULL,
	id_provincia INT NOT NULL,
    FOREIGN KEY (id_provincia) REFERENCES provincias(id) 
);

ALTER TABLE empleados ADD (
	direccion VARCHAR(30) NOT NULL,
    id_localidad INT,
    email VARCHAR(30),
    telefono VARCHAR(30),
    fecha_ingreso DATE NOT NULL,
    tms TIMESTAMP,
    
    FOREIGN KEY (id_localidad) REFERENCES localidades(id)
);

ALTER TABLE departamentos ADD (
gasto DOUBLE NOT NULL,
tms TIMESTAMP
);

INSERT INTO paises (nombre)
VALUES  ("Venezuela"), ("Argentina"),  ("Peru"),  ("Chiled"), ("Bolivia");

INSERT INTO provincias (nombre, idpais)
VALUES		("masachussets", 1), ("texas", 2), ("ohio", 3), ("oregon", 4), ("california", 5);
		
INSERT INTO localidades (nombre, cp, id_provincia)
VALUES ("yokohama", 2256, 1), ("tokyo", 5566, 2), ("kanto", 2266, 3), ("kyoto", 4488, 4), ("okinawa", 4554, 5);

INSERT INTO departamentos (nombre, presupuesto, estado, gasto, tms)
VALUES  ("DDHH", 53000.00, TRUE, 18000, "2020/11/04 03:00:00"),
		("Contaduria", 58000.00, FALSE, 15000, "2020/11/04 03:00:00"),
		("Ingenieria", 54000.00, TRUE, 52000, "2020/11/04 03:00:00"),
        ("Diseño grafico", 57000.00, FALSE, 45000, "2020/11/04 03:00:00"),
        ("Marqueting", 73000.00, TRUE, 25000, "2020/11/04 03:00:00");

INSERT INTO empleados (cuil_cuit, nombre, apellido, fecha_nacimiento, id_departamento, estado, direccion, id_localidad, email, telefono, fecha_ingreso, tms)
VALUES  (25-15648485-8, "Silvio", "Fernadez", "2000/05/22", 1, TRUE, "Avenida siempre viva 5588", 1, "yoquese@gmail.com", "55544-449106", "2014/05/02", "2020/11/04 03:00:00" ),
		(24-25648485-8, "Rene", "Godoy", "2000/05/22", 2, FALSE, "Avenida siempre viva 5488", 2, "yoquese@yolo.com", "55544-462113", "2014/05/02", "2020/11/04 03:00:00" ),
        (26-35648485-8, "Alberto", "Lopez", "2000/05/22", 3, TRUE, "Avenida siempre viva 5388", 3, "yoquese@hotmail.com", "55544-446214", "2014/05/02", "2020/11/04 03:00:00" ),
        (27-45648485-8, "Ignacio", "Rodriguez", "2000/05/22", 4, FALSE, "Avenida siempre viva 5288", 4, "yoquese@live.com", "55544-446216", "2014/05/02", "2020/11/04 03:00:00" ),
        (22-55648485-8, "Nahuel", "Perez", "2000/05/22", 5, TRUE, "Avenida siempre viva 5188", 5, "yoquese@msn.com", "55544-446211", "2014/05/02", "2020/11/04 03:00:00" );

ALTER TABLE pedidos
RENAME TO movimientos;




CREATE TABLE  proveedores (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razon_social VARCHAR(30),
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    naturaleza VARCHAR(30),
    cuit VARCHAR(30),
    id_localidad INT,
    estado BOOLEAN,
    tms TIMESTAMP,
    
    FOREIGN KEY (id_localidad) REFERENCES localidades(id)
);



CREATE TABLE marcas (
	id INT  AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30),
	descripcion VARCHAR(100),
	imagen  BLOB ,
    id_proveedor INT,
    estado BOOLEAN, 
    tms TIMESTAMP,
    
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id)
);


CREATE TABLE productos (
	id INT  AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30),
	descripcion VARCHAR(100),
	id_marca INT,
    stock INT,
    precio DOUBLE,
    estado BOOLEAN,
    tms TIMESTAMP,
    
    FOREIGN KEY (id_marca) REFERENCES marcas(id)
);




CREATE TABLE cajas (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    horainicio TIME,
    horacierre TIME,
    estado BOOLEAN,
    tms TIMESTAMP
);
        
INSERT INTO proveedores (razon_social, nombre, apellido, naturaleza, cuit, id_localidad, estado, tms)
VALUES ("Ala Co","Leon","Kennedy","Fisica","20-55664466-5", 1, True,"2020/11/04 03:00:00"), ("Coca-Cola Co","John","Wick","Juridica", "20-55664466-5",2 ,False,"2020/11/04 03:00:00"), ("Pansito SA","Teodore","Russebelt","Juridica", "20-55664466-5",3 ,True,"2020/11/04 03:00:00"), ("La Vaca Lola SA","George","Washington","Fisica" , "20-55664466-5",4 ,False,"2020/11/04 03:00:00"), ("Los huevos de pepe SRL","Pepe","Argento","Fisica", "20-55664466-5",5, False,"2020/11/04 03:00:00");

INSERT INTO marcas (nombre, descripcion, imagen, id_proveedor, estado, tms)
VALUES  ("Ala", "Compañia de elementos de limpieza", "", 1, True , "2020/11/04 03:00:00"), ("CocaCola", "Compañia de bebidas gasificadas", "", 2, true, "2020/11/04 03:00:00"), ("Pansito", "Panaderia", "", 3, true, "2020/11/04 03:00:00"),  ("La vaca lola", "Lechera", "", 4, true, "2020/11/04 03:00:00"), ("Los huevos de pepe", "Granja de huevos", "", 5, true, "2020/11/04 03:00:00");

INSERT INTO productos (nombre, descripcion, id_marca, stock, estado, precio)
VALUES ("Ala", "Jabon en polvo", 1, 500, TRUE, 50.52 ), ("Coca-cola", "Bebida gasificada", 2, 7500, TRUE, 150.00), ("Pan", "Panificado", 3, 300, TRUE, 200.00), ("Leche", "Leche descremada", 4, 500, TRUE, 250.00), ("Huevos", "huevos de campo", 5, 100, TRUE, 120.00);


INSERT INTO cajas (horainicio, horacierre, estado, tms)
VALUES ("08:00:00", "16:00:00", True, "2020/11/04 03:00:00"), ("08:00:00", "16:00:00", False, "2020/11/04 03:00:00"), ("08:00:00", "16:00:00", True, "2020/11/04 03:00:00"),("08:00:00", "16:00:00", True, "2020/11/04 03:00:00"),("08:00:00", "16:00:00", True, "2020/11/04 03:00:00");




SELECT nombre, presupuesto, gasto, (presupuesto - gasto)  AS diferencia FROM departamentos  WHERE estado = True;

SELECT pa.nombre, l.nombre FROM paises pa, provincias pr LEFT JOIN localidades l ON pr.id = l.id_provincia WHERE  pr.idpais  =  pa.id GROUP BY pa.nombre  ; 

UPDATE empleados SET telefono = "555-335516" WHERE idempleado = 2 ;
UPDATE empleados SET fecha_ingreso = "2022/12/12", id_localidad = 3 WHERE idempleado = 4;

INSERT INTO vendedores(apellido, nombre, cuitcuil, comisión)
VALUES ("Lopez ", "Hernan", "20-556548574-1", "15.00"), ("Gomez", "Fabian", "20-556548574-1", "50.00") , ("Fernandez", "Norman", "20-556548574-1", "70.00") , ("Perez", "German", "20-556548574-1", "30.00") , ("Nuñez", "Newman", "20-556548574-1", "50.00")    ;







ALTER TABLE movimientos ADD (
id_producto INT,
estado BOOLEAN, 
tms TIMESTAMP,
tipo_movimiento VARCHAR(30),

FOREIGN KEY (id_producto) REFERENCES productos(id)
);




-- Ejercicio 1 --





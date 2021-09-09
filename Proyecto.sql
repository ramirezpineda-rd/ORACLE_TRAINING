/*
Rub�n Dar�o Ram�rez Pineda

Rentas de veh�culos 
*/

CREATE TABLE EMPLEADOS(
    ID_EMPLEADO NUMBER(8) NOT NULL
    ,NOMBRE VARCHAR2(64) NOT NULL
    ,APELLIDO_PATERNO VARCHAR2(64) NOT NULL
    ,APELLIDO_MATERNO VARCHAR2(64) NOT NULL
    ,FECHA_NAC DATE NOT NULL
    ,SEXO CHAR(1) NOT NULL
    ,EMAIL VARCHAR2(128) NOT NULL
    ,ID_DEPARTAMENTO NUMBER(10)NOT NULL
    ,ID_USUARIO NUMBER(10) NOT NULL
    ,FECHA_CONTRATACION DATE
    ,CONSTRAINT ID_EMPLEADO_PK PRIMARY KEY(ID_EMPLEADO)
    ,CONSTRAINT ID_DEPARTAMENTO_FK FOREIGN KEY (ID_DEPARTAMENTO) REFERENCES DEPARTAMENTOS(ID_DEPARTAMENTO)
    ,CONSTRAINT ID_USUARIO_EMPLEADO_FK FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);

INSERT INTO EMPLEADOS VALUES(1,'JOSE','VARGAS','PADILLA','09/10/95','H','jose@gmail.edu.mx',1,1,'08/02/18');
INSERT INTO EMPLEADOS VALUES(2,'MARIA','LOURDES','GONZALEZ','05/09/90','M','lourdes@gmail.edu.mx',5,2,'08/02/18');
INSERT INTO EMPLEADOS VALUES(3,'MARIO','RODRIGUEZ','PEREZ','07/10/95','H','mario@gmail.edu.mx',6,3,'08/02/18');
INSERT INTO EMPLEADOS VALUES(4,'JAVIER','RODRIGUEZ','GONZALEZ','09/08/98','H','javier@gmail.edu.mx',7,4,'08/02/18');
INSERT INTO EMPLEADOS VALUES(5,'JOSE','FIDENCIO','LOPEZ','11/10/99','H','fidencio@gmail.edu.mx',2,5,'08/02/18');
INSERT INTO EMPLEADOS VALUES(6,'EMMANUEL','JIMENEZ','GONZALEZ','09/10/95','H','emmanuel@gmail.edu.mx',5,6,'08/02/18');

DROP TABLE SUCURSALES;

DROP TABLE MUNICIPIOS;

DROP TABLE ESTADOS;

CREATE TABLE SUCURSALES(
     ID_SUCURSAL NUMBER(10) NOT NULL
     ,NUM_SUCURSAL NUMBER(10) NOT NULL
    ,DIRECCION VARCHAR2(260) NOT NULL
    ,TELEFONO VARCHAR2(20) NOT NULL
    ,ID_MUNICIPIO NUMBER(5)
    ,CONSTRAINT ID_SUCURSAL_PK PRIMARY KEY(ID_SUCURSAL)
    ,CONSTRAINT ID_MUNICIPIO_FK FOREIGN KEY (ID_MUNICIPIO) REFERENCES MUNICIPIOS(ID)
);
--Tabla Sucursales
INSERT INTO SUCURSALES VALUES(1,4,'CALLE CUAUHTEMOC#437','3182456',1);
INSERT INTO SUCURSALES VALUES(2,4,'CALLE KIN#437','3182459',1);
INSERT INTO SUCURSALES VALUES(3,4,'CALLE CUAUHTEMOC#437','31824594',1);
INSERT INTO SUCURSALES VALUES(4,4,'CALLE BBB#437','3182659',1);
INSERT INTO SUCURSALES VALUES(5,4,'CALLE CUAUHTEMOC#437','31827592',1);
INSERT INTO SUCURSALES VALUES(6,4,'CALLE BUR#437','31824594',1);
INSERT INTO SUCURSALES VALUES(7,4,'CALLE TEP#437','3182959',1);
INSERT INTO SUCURSALES VALUES(8,4,'CALLE CUAUHTEMOC#437','3182459',1);
INSERT INTO SUCURSALES VALUES(9,4,'CALLE TEMP#437','3182459',1);
INSERT INTO SUCURSALES VALUES(10,4,'CALLE CUAUHTEMOC#437','3183452',1);
INSERT INTO SUCURSALES VALUES(11,4,'CALLE CUAUHTEMOC#437','3182459',1);
INSERT INTO SUCURSALES VALUES(12,4,'CALLE VIC#437','3182459',1);
INSERT INTO SUCURSALES VALUES(13,4,'CALLE CUAUHTEMOC#437','3186459',1);
INSERT INTO SUCURSALES VALUES(14,4,'CALLE CUAUHTEMOC#437','3188454',1);
INSERT INTO SUCURSALES VALUES(15,4,'CALLE CUAUHTEMOC#437','3187459',1);

--Tabla Estados
INSERT INTO ESTADOS VALUES (19, 'Nuevo Le�n', 'N.L.');
INSERT INTO ESTADOS VALUES (18, 'Tamaulipas', 'TM.');
INSERT INTO ESTADOS VALUES (1, 'Aguascalientes', 'AC');
INSERT INTO ESTADOS VALUES (2, 'Baja California', 'BCAL.');
INSERT INTO ESTADOS VALUES (3, 'Baja California SUR', 'BCALSur.');
INSERT INTO ESTADOS VALUES (4, 'Campeche', 'CAMPE');
INSERT INTO ESTADOS VALUES (5, 'Chiapas', 'CHPAS');
INSERT INTO ESTADOS VALUES (6, 'Chihuaha', 'CHIHUA');
INSERT INTO ESTADOS VALUES (7, 'Ciudad de Mexico', 'CDMX');
INSERT INTO ESTADOS VALUES (8, 'Coahuila', 'COAH');
INSERT INTO ESTADOS VALUES (9, 'Colima', 'COLI');
INSERT INTO ESTADOS VALUES (10, 'Durango', 'DRGO');
INSERT INTO ESTADOS VALUES (11, 'Guanajuato', 'GJTO');
INSERT INTO ESTADOS VALUES (12, 'Guerrero', ' GRRO');
INSERT INTO ESTADOS VALUES (13, 'Hidalgo', 'HIDG');
INSERT INTO ESTADOS VALUES (14, 'Jalisco', 'JALISC');
INSERT INTO ESTADOS VALUES (16, 'Estado de Mexico', 'EDOMEX');
INSERT INTO ESTADOS VALUES (17, 'Michoac�n', 'Mican.');
INSERT INTO ESTADOS VALUES (20, 'Morelos', 'Mrlos.');
INSERT INTO ESTADOS VALUES (21, 'Nayarit', 'Nyrt.');
INSERT INTO ESTADOS VALUES (22, 'Oaxaca', 'Oxca.');
INSERT INTO ESTADOS VALUES (23, 'Puebla', 'Pla.');
INSERT INTO ESTADOS VALUES (24, 'Queretaro', 'Qtro.');
INSERT INTO ESTADOS VALUES (26, 'Qintana Roo', 'QinRro.');
INSERT INTO ESTADOS VALUES (27, 'San Luis Potosi', 'Sluis.');
INSERT INTO ESTADOS VALUES (29, 'Sinaloa', 'Snloa.');
INSERT INTO ESTADOS VALUES (30, 'Sonora', 'Snora');
INSERT INTO ESTADOS VALUES (31, 'Tabasco', 'Tbsco');
INSERT INTO ESTADOS VALUES (32, 'Tlaxcala', 'Txla.');
INSERT INTO ESTADOS VALUES (33, 'Veracruz', 'Vcz.');
INSERT INTO ESTADOS VALUES (34, 'Yucatan', 'Yctan.');
INSERT INTO ESTADOS VALUES (35, 'Zacatecas', 'Zctecs.');
--Tabla Municipios

INSERT INTO MUNICIPIOS VALUES (1, 'Victoria', 'VICT', 28);
INSERT INTO MUNICIPIOS VALUES (2, 'Monterrey', 'MTY', 19);
INSERT INTO MUNICIPIOS VALUES (3, 'Iztapalapa', 'ITZA', 7);
INSERT INTO MUNICIPIOS VALUES (4, 'Ecatepec de Morelos', 'ECA', 16);
INSERT INTO MUNICIPIOS VALUES (5, 'Tijuana', 'Tij', 2);
INSERT INTO MUNICIPIOS VALUES (6, 'Puebla de Zaragoza', 'PZara', 23);
INSERT INTO MUNICIPIOS VALUES (7, 'Guadalajara', 'Guadj', 14);
INSERT INTO MUNICIPIOS VALUES (8, 'L�on', 'Leo', 11);
INSERT INTO MUNICIPIOS VALUES (9, 'J�arez', 'JAREZ', 6);
INSERT INTO MUNICIPIOS VALUES (10, 'Zapopan', 'Zpop', 14);
INSERT INTO MUNICIPIOS VALUES (11, 'Gustavo A. Madero', 'GtvoM', 7);
INSERT INTO MUNICIPIOS VALUES (12, 'Mulege', 'Mle', 3);
INSERT INTO MUNICIPIOS VALUES (13, 'Camargo', 'Crgo', 6);

INSERT INTO DEPARTAMENTOS VALUES (1, 'Administraci�n', 1);
INSERT INTO DEPARTAMENTOS VALUES (2, 'Ventas', 2);
INSERT INTO DEPARTAMENTOS VALUES (3, 'Marketing', 3);
INSERT INTO DEPARTAMENTOS VALUES (4, 'Contabilidad', 4);
INSERT INTO DEPARTAMENTOS VALUES (5, 'Sistemas', 5);

INSERT INTO CLIENTES VALUES(1, 'Julio', 'Martinez', 'Gallegos', '04/02/97', 'H', 14563, 'julgall@gmail.com');
INSERT INTO CLIENTES VALUES(2, 'Angel', 'Lerma', 'Vanoye', '18/04/99', 'H', 14564, 'angellerma@gmail.com');
INSERT INTO CLIENTES VALUES(3, 'Vanessa', 'Alonso', 'Resendiz', '03/08/99', 'M', 14565, 'vanealonso@gmail.com');
INSERT INTO CLIENTES VALUES(4, 'Ricardo', 'Ibarra', 'Garcia', '05/09/99', 'H', 14566, 'rickyibarra@gmail.com');
INSERT INTO CLIENTES VALUES(5, 'Ruben', 'Ramirez', 'Pineda', '05/09/99', 'H', 14566, 'rpineda@gmail.com');

CREATE TABLE DEPARTAMENTOS(
     ID_DEPARTAMENTO NUMBER(10) NOT NULL
    ,NOMBRE VARCHAR2(64) NOT NULL
    ,SUCURSAL_ID NUMBER(10) NOT NULL
    ,CONSTRAINT ID_DEPARTAMENTO_PK PRIMARY KEY(ID_DEPARTAMENTO)
    ,CONSTRAINT SUCURSAL_ID_FK FOREIGN KEY (SUCURSAL_ID) REFERENCES SUCURSALES(ID_SUCURSAL)
);

CREATE TABLE CLIENTES(
     ID_CLIENTE NUMBER(8) NOT NULL
    ,NOMBRE VARCHAR2(64) NOT NULL
    ,APELLIDO_PATERNO VARCHAR2(64) NOT NULL
    ,APELLIDO_MATERNO VARCHAR2(64) NOT NULL
    ,FECHA_NAC DATE NOT NULL
    ,SEXO CHAR(1) NOT NULL
    ,ID_USUARIO NUMBER(10) NOT NULL
    ,EMAIL VARCHAR2(128) NOT NULL
    ,CONSTRAINT ID_CLIENTE_PK PRIMARY KEY(ID_CLIENTE)
    ,CONSTRAINT ID_USUARIO_CLIENTE_FK FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);

CREATE TABLE USUARIOS(
     ID_USUARIO NUMBER(10) NOT NULL
    ,EMAIL VARCHAR2(254) NOT NULL
    ,PASS VARCHAR2(64) NOT NULL
    ,CONSTRAINT ID_USUARIOS_PK PRIMARY KEY(ID_USUARIO)
);

INSERT INTO USUARIOS VALUES(1,'ERIK@UPV.EDU.MX','123456');
INSERT INTO USUARIOS VALUES(2,'RUBEN@UPV.EDU.MX','RUBEN');
INSERT INTO USUARIOS VALUES(3,'LERMA@UPV.EDU.MX','LERMA');
INSERT INTO USUARIOS VALUES(4,'RICARDO@UPV.EDU.MX','RICARDO');


CREATE TABLE VEHICULOS(
     MATRICULA CHAR(30) NOT NULL
    ,MARCA VARCHAR2(30) NOT NULL
    ,MODELO VARCHAR2(64) NOT NULL
    ,ANIO_MODELO NUMBER(4)
    ,COLOR VARCHAR2(20)
    ,CANTIDAD_PASAJEROS NUMBER(2)
    ,RENDIMIENTO_KM VARCHAR2(64)
    ,SUCURSAL VARCHAR2(64) NOT NULL
    ,FECHA_ADQUISICION DATE
    ,KILOMETRAJE_ACTUAL VARCHAR2(20)
    ,CONSTRAINT MATRICULA_PK PRIMARY KEY(MATRICULA)
);
DROP TABLE VEHICULOS;

INSERT INTO VEHICULOS VALUES(1,'123-XLM-46', 'DODGE', 'RAM', '2021', 'VERDE', '5', 'SESENTAMIL', '07/09/2021, 'MIL');
INSERT INTO VEHICULOS VALUES(2,'456-SBT-56', 'CHEVROLETH, 'AVEO', '2020', 'BLANCO', '5', 'CINCUENTAMIL', '09/07/2021', 'MILQUINIENTOS');
INSERT INTO VEHICULOS VALUES(3,'789-ORT-49', 'FORD', 'FIESTA', '2021', 'ROJO', '5', 'VEINTEMIL', '15/03/2021', 'QUINIENTOS');
INSERT INTO VEHICULOS VALUES(4,'549-STU-49', 'KIA', 'RIO', '2021', 'ROJO', '5', 'CUARENTATAMIL', '15/03/2021', 'DOCIENTOS');


CREATE TABLE RENTAS(
     ID_SERVICIO NUMBER(10) NOT NULL
    ,NOMBRE_USUARIO VARCHAR2(64) NOT NULL
    ,MATRICULA CHAR(30) NOT NULL
    ,SUCURSAL VARCHAR2(64) NOT NULL
    ,FECHA_APARTADO DATE NOT NULL
    ,FECHA_ENTREGA DATE NOT NULL
    ,CONSTRAINT ID_SERVICIO_PK PRIMARY KEY(ID_SERVICIO)
    ,CONSTRAINT MATRICULA_FK FOREIGN KEY (MATRICULA) REFERENCES VEHICULOS(MATRICULA)
);


CREATE TABLE RETORNOS(
     ID_RETORNO NUMBER(10) NOT NULL
    ,FECHAHORA DATE NOT NULL
    ,DEVOLUCION VARCHAR2(64) NOT NULL
    ,KILOMETRAJE_DEVOLUCION VARCHAR2(20) NOT NULL
    ,CONSTRAINT ID_RETORNO_PK PRIMARY KEY(ID_RETORNO)
);

CREATE TABLE APARTADOS(
     ID NUMBER(10) NOT NULL
    ,MATRICULA_VEHICULO CHAR(30) NOT NULL
    ,DURACION_DIAS NUMBER(2) NOT NULL
    ,CONSTRAINT MATRICULA_VEHICULO_FK FOREIGN KEY (MATRICULA_VEHICULO) REFERENCES VEHICULOS(MATRICULA)
);





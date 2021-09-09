DROP TABLE ESTADOS;
DROP TABLE MUNICIPIOS;
COMMIT;

CREATE TABLE ESTADOS(
        ID NUMBER(2) CONSTRAINT ESTADO_PK PRIMARY KEY
        ,NOMBRE VARCHAR(64) NOT NULL
        ,ABREVIATURA VARCHAR(16) NOT NULL
        );
        
        CREATE TABLE MUNICIPIOS (
            ID NUMBRER(4) CONSTRAINT MUNICIPIOS_PK PRIMARY KEY
            ,NOMBRE VARCHAR(256) NOT NULL
            ,SIGLA VARCHAR2(8) NOT NULL
            ,ESTADO_ID NUMBER(2) CONSTRAINT 
            ,ESTADO_ID NUMBER(2) CONSTRAINT MUNICIPIOS_ESTADOS_FK REFERENCES ESTADOS (ID)
            );
            
        CREATE TABLE MUNICIPIOS (
            ID NUMBER(4) CONSTRAINT MUNICIPIOS_PK PRIMARY KEY
            ,NOMBRE VARCHAR2(8) NOT NULL
            ,ESTADO_ID NUMBER(2) CONSTRAINT MUNICIPIOS_ESTADOS_FK REFERENCES ESTADOS(ID)
            );
            
            INSERT INTO ESTADOS VALUES (28, 'TAMAULIPAS', 'Tamps.');
            INSERT INTO ESTADOS VALUES (41, 'Victoria', 'VICT', 28);
            
        DELETE FROM ESTADOS WHERE ID = 28;
        UPDATE ESTADOS SET ID = 27 WHERE ID = 28;
        
        SELECT * FROM MUNICIPIOS(
            ID NUMBER(4) CONSTRAINT MUNICIPIOS_PK PRIMARY KEY
            ,CLAVE NUMBER(3) NOT NULL
            ,NOMBRE VARCHAR2(256) NOT NULL
            ,SIGLA VARCHAR2(8) NOT NULL
            ,ESTADO_ID NUMBER(2) NOT NULL
                CONSTRAINT MUNICIPIOS_ESTADOS_FK REFERENCES ESTADOS(ID)
            ,CONSTRAINT MUNICIPIOS_CLAVE_ESTADO_UK UNIQUE (CLAVE, ESTADO_ID)
        );
        
        CREATE TABLE CENTRALES_ACTUARIOS (
            ID NUMBER (3)
            ,NOMBRE VARCHAR2(128) NOT NULL
            ,MUINICIPIO_ID NUMBER(4) NOT NULL
            ,CONSTRAINT CENTRALES_ACTUARIOS_PK PRIMARY KEY (ID)
            ,CONSTRAINT CENTRALES_ACTUARIOS_MUNICIPIOS_FK
                FOREIGN KEY (MUNICIPIO_ID) REFERENCES MUNICIPIOS(ID)
        );
        
        INSERT INTO ESTADOS VALUES (28, 'Tamaulipas', 'Tamps');--CONSTRAINT DELIMITA LOS DATOS
        INSERT INTO ESTADOS VALUES (19, 'Nuevo León', 'N.L');
        INSERT INTO MUNICIPIOS VALUES (2841, 41, 'Victoria', 'VICT', 28);
        INSERT INTO MUNICIPIOS VALUES (1942, 41, 'Monterrey', 'MTY', 19);
        
        DELETE FROM ESTADOS WHERE ID = 28;
        UPDATE ESTADOS SET ID = 27 WHERE ID = 28;U
        
        --------------------------------------------------
        --CONSULTAS--
        --las vistas pueden tener subconsultas--para evitar las subconsultas externas--las vistas no admiten order by--
        --las vistas son un resultado parcial--las vistas son objetos de las bases de datos--es una tabla virtual
        CREATE OR REPLACE VIEW VIEW_DEPARTMENTS ("ID", NOMBRE_DPTO, CANTIDAD_EMPLEADOS, CIUDAD, ESTADO, PAIS)AS
        SELECT
                DEPARTMENT_ID
                ,DEPARTMENT_NAME
                ,(SELECT COUNT(0)
                    FROM EMPLOYEES E
                    WHERE E. DEPARTMENT_ID = D.DEPARTMENT_ID)
                CANT_EMPLOYEES
                ,CITY
                ,STATE_PROVINCE
                ,COUNTRY_NAME
                ,REGION_NAME
                ,MANAGER_ID
            FROM
                DEPARTMENTS D INNER JOIN LOCATIONS L
                    ON D. LOCATION_ID = L.LOCATION_ID
            INNER JOIN COUNTRIES C
                ON L.COUNTRY_ID = C.COUNTRY_ID;
            INNER JOIN REGIONS R
                ON C.REGION_ID = R.REGION_ID;
                
                
--CREAR OTRO ARCHIVO--
SELECT * FROM VIEW_DEPARTMENTS WHERE CANT_EMPLOYEES > 0;
        
DROP VIEW VIEW_DEPARTMENTS;        
        
SELECT 
        D.*
        ,E.LAST_NAME MANAGER_LAST_NAME
        ,E.FIRST_NAME MANAGER_FIRST_NAME
    FROM
        VIEW_DEPARTMENTS D LEFT OUTER JOIN EMPLOYEES E
            ON D.MANAGER_ID = E.EMPLOYEE_ID;
            
SELECT * FROM VIEW_DEPARTMENTS_MANAGERS;

--CONCEPTO DE SECUENCIA--OBJETO DE ORACLE--EN OTRO MANEJADOR DE BASE DE DATOS NO SE ENCUENTRA LA SECUENCIA--
--ORACLE NO TIENE AUTOINCREMENT--ASI QUE SE CREA UNA SECUENCIA--
CREATE SEQUENCE EMPLOYEE_ID_SEQ
    INCREMENT BY 1
    START WITH 1000;
    COMMIT;
SELECT EMPLOYEES_ID_SEQ.CURRVAL FROM DUAL;--O NEXTVAL

insert into employees(employee_id, first_name, last_name)
    values (employees_seq.nextval, 'LUIS', 'FLORES','LFLORES');
    
select employees_seq.currval from dual;


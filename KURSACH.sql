
   CREATE TABLE users
  (
   UserId      number(10)      NOT NULL,
   Login VARCHAR2(50), 
   FIO VARCHAR2(50),
   Password  VARCHAR2(50),
    CONSTRAINT PK_users PRIMARY KEY(UserId)
  );
 
    CREATE TABLE fuels
  (
   FuelId      number(10)      NOT NULL,
   FuelName VARCHAR2(50), 
   Price  number(10),
    CONSTRAINT PK_fuels PRIMARY KEY(FuelId)
  );
  
   CREATE TABLE admins
  (
   AdminId      number(10)      NOT NULL,
   Login VARCHAR2(50), 
   FIO VARCHAR2(50),
   Password  VARCHAR2(50),
    CONSTRAINT PK_admins PRIMARY KEY(AdminId)
  );
  
     CREATE TABLE conteiners
  (
   ConteinerId      number(10)      NOT NULL,
   FuelId      number(10), 
   MaxQuantity number(10),
   CurrentQuantity  number(10),
    CONSTRAINT PK_conteiners PRIMARY KEY(ConteinerId),
     CONSTRAINT FK_conteiners_fuels FOREIGN  KEY(FuelId)  REFERENCES fuels(FuelId)
  );
  
     CREATE TABLE stations
  (
   StationId      number(10)      NOT NULL,
   ConteinerId number(10),  
     Address VARCHAR2(50), 
    CONSTRAINT PK_STATION PRIMARY KEY(StationId),
   CONSTRAINT FK_stations_conteiners FOREIGN  KEY(ConteinerId)  REFERENCES conteiners(ConteinerId)
  );
  
  DROP TABLE stations;
 
  
   CREATE TABLE orders
  (
   OrderId      number(10)      NOT NULL,
     UserName VARCHAR2(50), 
  --   OrderDate Date,
     Text VARCHAR2(50), 
     UserId number(10),
     StationId number(10),
      FuelId  number(10),
      Quantity number(10),
      Cost number(10), 
       SUMM number(10),    
    CONSTRAINT PK_orders PRIMARY KEY(OrderId),
   CONSTRAINT FK1 FOREIGN  KEY(UserId)  REFERENCES users(UserId),
    CONSTRAINT FK2 FOREIGN  KEY(StationId)  REFERENCES stations(StationId),
     CONSTRAINT FK3 FOREIGN  KEY(FuelId)  REFERENCES fuels(FuelId)
  );
  ALTER TABLE ORDERS ADD ORDERDATE DATE;
  DROP TABLE ORDERS;
----------------------


BEGIN
ADD_ADMIN('WANNE01','ILYA KHAMICBONOK','ILYA01');
END;

SELECT * FROM ADMINS; 
----------------------


BEGIN
ADD_USER('ATA2110','ATA ATAYEW','ATA00');
END;

SELECT * FROM USERS; 

DELETE FROM USERS WHERE USERID=1;
-----------------------------------------------------------
BEGIN
ADD_fuel('DOWR2110','DOWRAN00','AI-95',7);
END;

SELECT * FROM fuels; 
---------------------------------------------------------------



BEGIN
ADD_CONTEINER('DOWR2110','DOWRAN00',1,600);
END;

SELECT * FROM conteiners; 
------------------------------------------------------------



BEGIN
ADD_STATION('DOWR2110','DOWRAN00',1,'EE 10');
END;

 
SELECT * FROM STATIONS; 

INSERT INTO STATIONS (stationid,conteinerid,ADDRESS)
values(3,2,'BELORUSSKAYA 21');

DELETE FROM stations WHERE stationid=7; 
---------------------------------------------------------

BEGIN
ADD_ORDER('MYRAT2000','JDUU','SOWETSKAYA 10','GAS',115);
END;

SELECT * FROM ORDERS; 
 
--------------------------------------------------

SELECT * FROM ADMINS;
SELECT * FROM conteiners;

BEGIN
ADD_QUANTITY_TO_CONTEINER('DOWR2110','DOWRAN00',2,0);
END;
-------------------------------------------------------


BEGIN
GET_FUELSOFSTATION('AA 10');
END;
----------------------------------------------------------

BEGIN
GET_ORDERS_FORADMIN('DOWR2110','DOWRAN00','MYRAT2000');
END;
--------------------------------------------------------
BEGIN
DELETE_ORDER_TO_ID_A('DOWR2110','DOWRAN00',6);
END;
--------------------------------------------------------

BEGIN
DELETE_ORDER_TO_ID_U('ATA2110','ATA00',4);
END;

-----------------------------------------
BEGIN
GET_ORDERS_FORUSER('ATA2110','ATA00');
END;

------------------------------------------------


BEGIN
GET_STATISTIKA_FORADMIN_M('DOWR2110','DOWRAN00','5');
END;

 -------------------------------------------------------

BEGIN
GET_STATISTIKA_FORADMIN_D('DOWR2110','DOWRAN00','2');
END;

 -------------------------------------------------------
 BEGIN
GET_STATISTIKA_FORUSER_D('ATA2110','ATA00','2');
END;
------------------------------------------------------
 BEGIN
GET_STATISTIKA_FORUSER_M('ATA2110','ATA00','5');
END;
-------------------------------

SELECT * FROM ADMINS;

BEGIN
DELETE_ADMIN('DOWR2110','DOWRAN00','WANNE01');
END;
-------------------
SELECT * FROM USERS;
SELECT * FROM ORDERS;

BEGIN
DELETE_USER('ATA2110','ATA00');
END;
--------------------------------------------

BEGIN
UPDATE_PASSWORD_USER('MYRAT2000','ATA01','MYRIK00');
END;

-----------------------------------------------

BEGIN
GET_ADMINS('DOWR2110','DOWRAN00');
END;
--------------------------------------

BEGIN
GET_USERS('DOWR2110','DOWRAN00','ASFFS');
END;
--------------------------------------

BEGIN
GET_FUELS('DOWR2110','DOWRAN00');
END;

--------------------------------------

BEGIN
GET_STATIONS('DOWR2110','DOWRAN00');
END;

--------------------------------------

BEGIN
GET_CONTEINERS('DOWR2110','DOWRAN00');
END;
---------------------------------


BEGIN
PACKET_ADMIN.GET_USERS('DOWR2110','DOWRAN00');
END;

----------------------------
BEGIN
packet_user.get_statistika_foruser_m('ATA2110','ATA00','06');
END;

-------------------------------------------
SELECT * FROM CONTEINERS;
SELECT * FROM STATIONS;
DELETE FROM conteiners WHERE CONTEINERID=1;
DELETE FROM STATIONS WHERE STATIONID=2;

BEGIN
DELETE_CONTEINER('DOWR2110','DOWRAN00',2);
END;

---------------------------------
SELECT * FROM FUELS;
SELECT * FROM CONTEINERS;
DELETE FROM FUELS WHERE FUELID=1;

BEGIN 
DELETE_FUEL('DOWR2110','DOWRAN00',3);
END;
----------------------------------------------
SELECT * FROM ORDERS;

BEGIN 
DELETE_STATION('DOWR2110','DOWRAN00',1);
END;
----------------------------------------
BEGIN 
EDIT_FUEL_NAME('DOWR2110','DOWRAN00',33,'GASS');
END;
---------------------
BEGIN 
EDIT_STATION('DOWR2110','DOWRAN00',4,'SOWETSKAYA 10');
END;

SELECT * FROM STATIONS;
-----------------------
BEGIN
EDIT_FUEL_PRICE('DOWR2110','DOWRAN00',1,2);
END;

SELECT * FROM FUELS;

------------------------------
SELECT * FROM FUELS;
SELECT * FROM CONTEINERS;
SELECT * FROM STATIONS;

begin
GET_WISHFUEL_FORUSER('GASS');
end;
-----------------------------------------

















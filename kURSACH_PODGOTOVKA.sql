BEGIN
PACKET_ADMIN.ADD_ADMIN('WANNE01','ILYA KHAMICBONOK','ILYA01');
END;
--DOBAVLENIYE ADMINA
----------------------------------------
BEGIN
PACKET_USER.ADD_USER('ATA2110','ATA ATAYEW','ATA00');
END;
--DOBAVLENIYA POLZOVATELYA
-------------------------------------- 
BEGIN
PACKET_ADMIN.ADD_fuel('DOWR2110','DOWRAN00','AI-95',7);
END;
--DOBAVLENIYA TOPLIVO
--------------------------------------------

BEGIN
PACKET_ADMIN.ADD_CONTEINER('DOWR2110','DOWRAN00',1,600);
END;
--DOBAVLENIYA EMKOSTI
-------------------------------------

BEGIN
PACKET_ADMIN.ADD_STATION('DOWR2110','DOWRAN00',1,'EE 10');
END;--DOBAVLENIYA STANCII
---------------------------------------------
BEGIN
PACKET_USER.ADD_ORDER('MYRAT2000','JDUU','SOWETSKAYA 10','GASS',115);
END;
--DOBAVLENIYA ZAKAZA
---------------------------------------
BEGIN
PACKET_ADMIN.ADD_QUANTITY_TO_CONTEINER('DOWR2110','DOWRAN00',2,0);
END;
--ZAPOLNENIYA EMKOSTI
--ESLI 0 DO MAKSIMALNOY ZAPOLNYAET
--------------------------------------------

BEGIN
PACKET_USER.GET_FUELSOFSTATION('SWERDLOVA 15');
END;
--VOZVRASHENIYA TOPLIV PO UKAZANNOMU ADRESU
--------------------------------------

BEGIN
PACKET_ADMIN.GET_ORDERS_FORADMIN('DOWR2110','DOWRAN00','MYRAT2000');
END;
--VOZVRASHENIYA ZAKAZOV PO UKAZANNOMU POLZOVATELYU
----------------------------------------------

BEGIN
PACKET_ADMIN.DELETE_ORDER_TO_ID_A('DOWR2110','DOWRAN00',6);
END;
--UDALENIYE ZAKAZA PO ID
--------------------------------------------------------

BEGIN
PACKET_USER.DELETE_ORDER_TO_ID_U('ATA2110','ATA00',4);
END;
--UDALENIYE ZAKAZA PO ID
-----------------------------------------
BEGIN
PACKET_USER.GET_ORDERS_FORUSER('ATA2110','ATA00');
END;
--VOZVRASHENIYA ZAKAZOV POLZOVATELYU
-----------------------------------------
begin
PACKET_USER.GET_WISHFUEL_FORUSER('GASS');
end;
--PODBOR PO SPISKU PO PREDPOCITENIYAM POLZOVATELYA
--------------------------------
BEGIN
PACKET_ADMIN.GET_STATISTIKA_FORADMIN_M('DOWR2110','DOWRAN00','5');
END;
 -------------------------------------------------------

BEGIN
PACKET_ADMIN.GET_STATISTIKA_FORADMIN_D('DOWR2110','DOWRAN00','2');
END;

-------------------------------------------------------
 BEGIN
PACKET_USER.GET_STATISTIKA_FORUSER_D('ATA2110','ATA00','2');
END;
------------------------------------------------------
 BEGIN
PACKET_USER.GET_STATISTIKA_FORUSER_M('ATA2110','ATA00','5');
END;
-----------------------------------------
 SELECT * FROM ORDERS;
 
 BEGIN
 PACKET_USER.DELETE_ORDER_TO_ID_U('ATA2110','ATA00',1);
 END;

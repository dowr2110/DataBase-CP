
create or replace directory XMLData as 'C:\\expimp';
DECLARE
    xml_clob clob;
BEGIN
    select dbms_xmlgen.getxml('select * from admins') into xml_clob from dual;
    DBMS_XSLPROCESSOR.CLOB2FILE(cl => xml_clob, flocation => 'XMLDATA', fname => 'admins.xml');
END;

DECLARE
    xml_clob clob;
BEGIN
    select dbms_xmlgen.getxml('select * from orders') into xml_clob from dual;
    DBMS_XSLPROCESSOR.CLOB2FILE(cl => xml_clob, flocation => 'XMLDATA', fname => 'orders.xml');
END;

DECLARE
    xml_clob clob;
BEGIN
    select dbms_xmlgen.getxml('select * from fuels') into xml_clob from dual;
    DBMS_XSLPROCESSOR.CLOB2FILE(cl => xml_clob, flocation => 'XMLDATA', fname => 'fuels.xml');
END;

DECLARE
    xml_clob clob;
BEGIN
    select dbms_xmlgen.getxml('select * from users') into xml_clob from dual;
    DBMS_XSLPROCESSOR.CLOB2FILE(cl => xml_clob, flocation => 'XMLDATA', fname => 'users.xml');
END;

DECLARE
    xml_clob clob;
BEGIN
    select dbms_xmlgen.getxml('select * from stations') into xml_clob from dual;
    DBMS_XSLPROCESSOR.CLOB2FILE(cl => xml_clob, flocation => 'XMLDATA', fname => 'stations.xml');
END;

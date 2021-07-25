

INSERT INTO admins SELECT x.*
    FROM (SELECT XMLTYPE(bfilename('XMLDATA', 'admins.xml'), nls_charset_id('UTF8')) xml_data FROM dual),
    XMLTABLE('/ROWSET/ROW' PASSING xml_data
                            COLUMNS AdminId  number(10) PATH 'ADMINID',
   Login VARCHAR2(50) PATH 'LOGIN', 
   FIO VARCHAR2(50) PATH 'FIO',
   Password  VARCHAR2(50) PATH 'PASSWORD') x;

select * from admins2;
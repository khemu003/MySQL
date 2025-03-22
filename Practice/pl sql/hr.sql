set serveroutput on;

DECLARE
    msg varchar(20) := 'I am khemraj mangal';
begin

    dbms_output.put_line('hello world');
    dbms_output.put_line(msg);
    dbms_output.put_line('hello world,' || ' ' || 'this is concat method');
    
end;


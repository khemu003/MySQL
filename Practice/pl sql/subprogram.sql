-- subprogram
-- procedure vs functions
-- program will excute some particular
-- schema level
-- package or inside th pl/sql block

-- function and procedure
    -- function return something and procedure don't return anything
    
/*
create or replace procedure [name]
    [in | out | in out ]
    
begin
    <procedure Body>
    
end procedure_name
*/

set serveroutput on;

create procedure message
as
begin
    dbms_output.put_line('hello user');
    
end;

execute message;
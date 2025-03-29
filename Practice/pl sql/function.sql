set SERVEROUTPUT on;

declare
    x int;
    y int;
    c int;
    output int;
    
    function subno(a in int, b in int) 
    return int as
    c int;
    begin
        c:=a+b;
        dbms_output.put_line(c);
        return c;
    end;

begin
    x:=30;
    y:=40;
    output := subno(x,y);
    dbms_output.put_line(output);
    
end;

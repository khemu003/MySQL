set serveroutput on;


DECLARE

    CURSOR emp_cur IS select ROWID, first_name from employees;
    emp_record employees%ROWTYPE;

BEGIN

    for  emp_record in emp_cur
        loop
        dbms_output.put_line('ROW_ID : ' || emp_record.ROWID || ' Emp_name : ' || emp_record.first_name);
    end loop;

END;
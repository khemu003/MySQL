set serveroutput on;


DECLARE

    CURSOR emp_cur IS select * from employees;
    emp_record employees%ROWTYPE;

BEGIN

    for emp_record in emp_cur
        loop
        dbms_output.put_line('Ename : ' || emp_record.first_name);
    end loop;

END;
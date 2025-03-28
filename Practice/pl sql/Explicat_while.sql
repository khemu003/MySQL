set serveroutput on;


DECLARE

    CURSOR emp_cur IS select * from employees;
    emp_record employees%ROWTYPE;

BEGIN

    open emp_cur;
    fetch emp_cur into emp_record;
    while emp_cur%found
        loop
        dbms_output.put_line('Emp_name : ' || emp_record.first_name);
        fetch emp_cur into emp_record;
    end loop;
    close emp_cur;

END;
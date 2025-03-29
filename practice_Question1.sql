set serveroutput on;


DECLARE

    CURSOR emp_cur IS 
        select * from employees;
    emp_record employees%ROWTYPE;

BEGIN

    for  emp_record in emp_cur
    loop
        if (emp_record.department_id=60 or emp_record.department_id=90) then
            dbms_output.put_line('Emp_name : ' || emp_record.first_name || 'salary : ' || emp_record.salary*0.9);
        else 
            dbms_output.put_line('Emp_name : ' || emp_record.first_name || 'salary : ' || emp_record.salary*08);
        end if;
    end loop;

END;
-- Use of SQL in PLSQL Example
declare
v_name employees.first_name%type;
v_sal employees.salary%type;
begin 
select first_name,salary into v_name, v_sal from employees where employee_id = 100;
dbms_output.put_line('The salary of '|| v_name ||' is ' || v_sal);
end;
